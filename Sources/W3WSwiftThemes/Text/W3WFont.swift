//
//  File.swift
//  
//
//  Created by Dave Duprey on 04/07/2024.
//

import CoreText


public struct W3WFont: CustomStringConvertible {
  
  var font: CTFont

  
  public init(ctFont: CTFont) {
    self.font = ctFont
  }
  
  
  public init(name: String, size: CGFloat, weight: CGFloat = 0.0, italic: Bool = false) {

    // set up description
    let fontDescriptorAttributes = [kCTFontFamilyNameAttribute: name, kCTFontTraitsAttribute: [ kCTFontWeightTrait: weight ]] as [CFString : Any] //kCTFontNameAttribute: "Courier",
    let fontDescriptor           = CTFontDescriptorCreateWithAttributes(fontDescriptorAttributes as CFDictionary)
    
    // make the font
    font = CTFontCreateWithFontDescriptor(fontDescriptor, size, nil) //var identityMat = CGAffineTransform(scaleX: 1.0, y: 1.0)

    // make it italic is that's whagt's needed
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
  
  
  public func with(weight: CGFloat) -> W3WFont {
    return W3WFont(ctFont: CTFontCreateWithFontDescriptor(self.makeDescriptor(weight: weight), size, nil))
  }
  
  
  var traits: CTFontSymbolicTraits {
    return CTFontGetSymbolicTraits(font)
  }
  
  public var name: String {
    return (CTFontCopyName(font, kCTFontPostScriptNameKey) as? String) ?? "Unknown"
  }
  
  public var size: CGFloat {
    return Double(CTFontGetSize(font))
  }
  
  public var italic: Bool {
    return traits.contains(.italicTrait)
  }
  
  public var bold: Bool {
    return traits.contains(.boldTrait)
  }

  public var description: String {
    return name + "(\(size))"
  }
}



#if canImport(UIKit)
import UIKit

/// returns a UIFont colour
extension W3WFont {
  
  public var uiFont: UIFont {
    get {
      UIFont(name: (CTFontCopyName(font, kCTFontPostScriptNameKey) as? String) ?? "SF Pro", size: size) ?? .systemFont(ofSize: CTFontGetSize(font))
    }
  }
  
  public init(uiFont: UIFont) {
    let traits = uiFont.fontDescriptor.object(forKey: .traits) as? [UIFontDescriptor.TraitKey: Any] ?? [:]
    let weight = traits[.weight] as? Double ?? 17.0
    let italic = traits[.slant] as? Double != 0.0
    
    self.init(name: uiFont.familyName, size: uiFont.pointSize, weight: weight, italic: italic)
  }
  
}
#endif


#if canImport(SwiftUI)
import SwiftUI

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


#if canImport(AppKit)
import AppKit

/// returns a UIFont colour
extension W3WFont {
  
  public var nsFont: NSFont {
    get {
      NSFont(font)
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
