//
//  File.swift
//
//
//  Created by Dave Duprey on 04/07/2024.
//

#if canImport(UIKit)

import Foundation
import CoreText
import UIKit


public struct W3WFont: CustomStringConvertible {
  
  var font: UIFont

  public var uiFont: UIFont { get { font } }


  public init(uiFont: UIFont) {
    self.font = uiFont
  }


  public init(ctFont: CTFont) {
    self.font = UIFont(name: (CTFontCopyName(ctFont, kCTFontPostScriptNameKey) as? String) ?? "", size: CTFontGetSize(ctFont)) ?? .systemFont(ofSize: CTFontGetSize(ctFont))
  }
  
  
  public init(name: String, size: CGFloat, weight: W3WFontWeight = .none, italic: Bool = false) {

    if name == W3WTypefaces.defaultTypefaceName {
      font = UIFont.systemFont(ofSize: size, weight: weight.uiWeight)
      
    } else {
      let fontAttributes: [UIFontDescriptor.AttributeName: Any] = [
        .family: name,
        .size: size,
        .traits: [ 
          kCTFontWeightTrait: weight.value
        ]
      ]
      
      font = UIFont(descriptor: UIFontDescriptor(fontAttributes: fontAttributes), size: size)
    }
    
    if italic {
      font = uiFontWithTraits(.traitItalic)
    }
  }
  
  
  func uiFontWithTraits(_ traits: UIFontDescriptor.SymbolicTraits...) -> UIFont {
    let descriptor = font.fontDescriptor.withSymbolicTraits(UIFontDescriptor.SymbolicTraits(traits))
    return UIFont(descriptor: descriptor!, size: font.pointSize)
  }
  
  
  func makeDescriptor(weight: CGFloat) -> CTFontDescriptor {
    let fontDescriptorAttributes = [kCTFontFamilyNameAttribute: name, kCTFontTraitsAttribute: [ kCTFontWeightTrait: weight ]] as [CFString : Any] //kCTFontNameAttribute: "Courier",
    return CTFontDescriptorCreateWithAttributes(fontDescriptorAttributes as CFDictionary)
  }
  
  
  public func with(size: CGFloat) -> W3WFont {
    return W3WFont(uiFont: font.withSize(size))
  }
  

  public func with(weight: W3WFontWeight) -> W3WFont {
    let newDescriptor = font.fontDescriptor.addingAttributes([.traits: [
      UIFontDescriptor.TraitKey.weight: weight]
    ])
    return W3WFont(uiFont: UIFont(descriptor: newDescriptor, size: font.pointSize))
  }
  
  
  var symbolicTraits: CTFontSymbolicTraits {
    return CTFontGetSymbolicTraits(font)
  }
  
  
  var fontTraits: Dictionary<NSObject, AnyObject> {
    return CTFontCopyTraits(font) as Dictionary
  }
  
  
  public var name: String {
    return font.fontName
  }
  
  
  public var size: CGFloat {
    return font.pointSize
  }
  
  
  public var italic: Bool {
    return symbolicTraits.contains(.italicTrait)
  }
  
  
  public var bold: Bool {
    return symbolicTraits.contains(.boldTrait)
  }

  
  public var weight: CGFloat {
      if let weightNumber = (fontTraits[kCTFontWeightTrait] as? NSNumber)?.doubleValue {
        return weightNumber
      } else {
        return 0.0
      }
    }
     

  public var description: String {
    return name + "(" + String(format: "%.1f", size) + ")"
  }
}


#endif

