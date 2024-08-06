//
//  File.swift
//  
//
//  Created by Dave Duprey on 04/07/2024.
//


import Foundation
import CoreText
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(AppKit)
import AppKit
#endif


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
    
    let fontDescriptor = CTFontDescriptorCreateWithAttributes(fontDescriptorAttributes as CFDictionary)
    
    // make the font
    font = CTFontCreateWithFontDescriptor(fontDescriptor, size, nil)
    
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
    return W3WFont(name: familyName, size: size, weight: W3WFontWeight(value: weight), italic: italic)
  }

  public func with(weight: W3WFontWeight) -> W3WFont {
    return W3WFont(name: familyName, size: size, weight: weight, italic: italic)
  }

  public func with(italic: Bool) -> W3WFont {
    return W3WFont(name: familyName, size: size, weight: W3WFontWeight(value: weight), italic: italic)
  }

  
  var symbolicTraits: CTFontSymbolicTraits {
    return CTFontGetSymbolicTraits(font)
  }
  
  var fontTraits: Dictionary<NSObject, AnyObject> {
    return CTFontCopyTraits(font) as Dictionary
  }
  
  public var familyName: String {
    return CTFontCopyFamilyName(font) as String
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


// MARK: AppKit

#if canImport(AppKit)

/// returns a UIFont colour
extension W3WFont {
  
  public var nsFont: NSFont {
    get {
      NSFont(font)
    }
  }
  
}

#endif


// MARK: SwiftUI


#if canImport(SwiftUI)

/// returns a UIFont colour
@available(iOS 13.0, *)
extension W3WFont {
  
  public var suFont: Font {
    get {
      Font(font)
    }
  }
  
}

#endif


// MARK: UIKit


#if canImport(UIKit)

extension W3WFont {
 
  public var uiFont: UIFont {
    get {
      let fontAttributes: [UIFontDescriptor.AttributeName: Any] = [
        .family: familyName,
        .traits: fontTraits
      ]
      return UIFont(descriptor: UIFontDescriptor(fontAttributes: fontAttributes), size: size)
    }
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
