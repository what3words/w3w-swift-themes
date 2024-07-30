//
//  File.swift
//  
//
//  Created by Dave Duprey on 04/07/2024.
//

#if !canImport(UIKit)


import CoreText


public struct W3WFont: CustomStringConvertible {
  
  var font: CTFont

  
  public init(ctFont: CTFont) {
    self.font = ctFont
  }
  
  
  public init(name: String, size: CGFloat, weight: W3WFontWeight = .none, italic: Bool = false) {

    // set up description
    let fontDescriptorAttributes = [
      kCTFontFamilyNameAttribute: name,
      kCTFontTraitsAttribute: [ kCTFontWeightTrait: weight.value ]
    ] as [CFString : Any]
    
    let fontDescriptor           = CTFontDescriptorCreateWithAttributes(fontDescriptorAttributes as CFDictionary)
    
    // make the font
    font = CTFontCreateWithFontDescriptor(fontDescriptor, size, nil) //var identityMat = CGAffineTransform(scaleX: 1.0, y: 1.0)
    
    // make it italic if that's what's needed
    if italic {
      if let italicVersion = CTFontCreateCopyWithSymbolicTraits(font, size, nil, .italicTrait, .italicTrait) {
        font = italicVersion
      }
    }
  }

  func makeDescriptor(weight: CGFloat) -> CTFontDescriptor {
    let fontDescriptorAttributes = [kCTFontFamilyNameAttribute: name, kCTFontTraitsAttribute: [ kCTFontWeightTrait: weight ]] as [CFString : Any] //kCTFontNameAttribute: "Courier",
    return CTFontDescriptorCreateWithAttributes(fontDescriptorAttributes as CFDictionary)
  }
  
  
  public func with(size: CGFloat) -> W3WFont {
    return W3WFont(ctFont: CTFontCreateCopyWithAttributes(font, size, nil, nil))
  }

  public func with(weight: W3WFontWeight) -> W3WFont {
    return W3WFont(ctFont: CTFontCreateWithFontDescriptor(self.makeDescriptor(weight: weight.value), size, nil))
  }
  
  
  var symbolicTraits: CTFontSymbolicTraits {
    return CTFontGetSymbolicTraits(font)
  }
  
  var fontTraits: Dictionary<NSObject, AnyObject> {
    return CTFontCopyTraits(font) as Dictionary
  }
  
  public var name: String {
    return (CTFontCopyName(font, kCTFontPostScriptNameKey) as? String) ?? "Unknown"
  }
  
  public var size: CGFloat {
    return Double(CTFontGetSize(font))
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







//public enum W3WFontTrait {
//  case regular
//  case bold
//  case italic
//  case boldItalic
//}
//
//
//public enum W3WFontWeight {
//  case black
//  case bold
//  case heavy
//  case light
//  case medium
//  case regular
//  case semibold
//  case thin
//  case ultralight
//}
//
//
//struct W3WFont {
//  let name: String = "SF Pro"
//  let size: CGFloat = 17.0
//  let weight: W3WFontWeight = .regular
//  let trait: W3WFontTrait = .regular
//}


//    let fontDescriptor = DTCoreTextFontDescriptor()
//    fontDescriptor.fontFamily = @"Helvetica";
//    fontDescriptor.boldTrait = YES;
//    fontDescriptor.italicTrait = YES;
//
//    CTFontRef boldAndItalicHelvetica = [fontDescriptor newMatchingFont];
    

//    if bold {
//      if let boldVersion = CTFontCreateCopyWithSymbolicTraits(f, size, nil, .boldTrait, .boldTrait) {
//        f = boldVersion
//      }
//    }
