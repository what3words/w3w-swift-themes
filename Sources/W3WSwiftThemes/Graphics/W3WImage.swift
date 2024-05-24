//
//  File.swift
//  
//
//  Created by Dave Duprey on 20/04/2023.
//

import UIKit

open class W3WImage {

  var imageSource: W3WImageSource!
  public var colors: W3WColors!
  
  public var configuration: NSObject?
  
  @available(iOS 13.0, *)
  public func setImageConfiguration(_ configuration: UIImage.Configuration) {
    self.configuration = configuration
  }
  
  public init(systemName: String, colors: W3WColors) {
    self.imageSource = .system(systemName)
    set(colors: colors)
  }
  
  
  public init(drawing: W3WDrawing, colors: W3WColors) {
    imageSource = .drawing(drawing)
    set(colors: colors)
  }
  
  
  public init(file: String, colors: W3WColors) {
    imageSource = .file(file)
    set(colors: colors)
  }

  
  public func set(colors: W3WColors) {
    self.colors = colors
  }

  
  public func with(colors: W3WColors) -> W3WImage {
    set(colors: colors)
    return self
  }

  
  @available(*, deprecated, message: "Use get(size: W3WIconSize?) instead")
  public func get(size: CGSize?) -> UIImage {
    return get(size: W3WIconSize(value: size ?? CGSize.zero))
  }

  
  public func get(size: W3WIconSize? = nil) -> UIImage {
    switch imageSource {
    case .drawing(let drawing):
      return from(drawing: drawing, size: size)
    case .system(let system):
      return from(symbol: system, size: size)
    case .file(let file):
      return from(file: file, size: size)
    case .none:
      return UIImage()
    }
  }
  
  
  func from(drawing: W3WDrawing, size: W3WIconSize? = nil) -> UIImage {
    return UIImage(cgImage: drawing.asCGImage(size: size?.value ?? W3WIconSize.largeIcon.value, colors: colors ?? .standardIcons)!)
  }
  
  
  func from(file: String, size: W3WIconSize? = nil) -> UIImage {
    guard let maskImage = UIImage(named: file, in: Bundle.module, compatibleWith: nil) else {
      return UIImage()
    }
    if let color = colors?.foreground?.current.uiColor {
      return maskImage.mask(with: color, size: size?.value)
    }
    return maskImage
  }
  
  
  func from(symbol: String, size: W3WIconSize? = nil) -> UIImage {
    var resultImage: UIImage? = nil
    
    // if SF Symbols can take multi-colour, and colours are available
    if #available(iOS 15.0, *) {
      var colorArray = [UIColor]()
      
      if let foreground = colors?.foreground?.current.uiColor {
        colorArray.append(foreground)
      }
      
      if let secondary = colors?.secondary?.current.uiColor {
        colorArray.append(secondary)
      }
      
      if let tint = colors?.tint?.current.uiColor {
        colorArray.append(tint)
      }
      
      let configuration = UIImage.SymbolConfiguration(paletteColors: colorArray)
      
      if let image = UIImage(systemName: symbol, withConfiguration: configuration) {
        resultImage = image.withRenderingMode(.automatic)
      }
    }
    

    if #available(iOS 13.0, *) { // if we have SF Symbols available at all
      // if there is a tint colour
      if let tint = colors?.tint?.current.uiColor {
        resultImage = UIImage(systemName: symbol)?.withTintColor(tint)
        
      // no tint colour, go with foreground color
      } else if let color = colors?.foreground?.current.uiColor {
        resultImage = UIImage(systemName: symbol)!.withTintColor(color)
        
      } else {
        resultImage = UIImage(systemName: symbol)!
      }
      
      if let size = size, let sizeConfiguration = resultImage?.configuration?.applying(UIImage.SymbolConfiguration(pointSize: size.value.width)) {
        resultImage = resultImage?.withConfiguration(sizeConfiguration)
      }
      if let imageConfiguration = configuration as? UIImage.SymbolConfiguration {
        resultImage = resultImage?.withConfiguration(imageConfiguration)
      }
    }
      
    // if there are no SF Symbols
    // TODO: Add backwards compatibility, or make 'missing image' image
    return resultImage ?? UIImage()
  }
  
}


extension UIImage {
  func mask(with color: UIColor, size: CGSize? = nil) -> UIImage {
    let targetSize = size ?? self.size
    UIGraphicsBeginImageContextWithOptions(targetSize, false, scale)
    // Create a rectangle equal to the size of the image
    let drawRect = CGRect(origin: .zero, size: targetSize)
    // Set a color and fill the whole space with that color
    color.setFill()
    UIRectFill(drawRect)
    // Draw an image over the space with a blend mode of .destinationIn, which is a mode that treats the image as an image mask
    draw(in: drawRect, blendMode: .destinationIn, alpha: 1.0)
    
    let tintedImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return tintedImage!
  }
}
