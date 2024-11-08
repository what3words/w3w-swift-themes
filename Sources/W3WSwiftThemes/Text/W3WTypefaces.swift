//
//  File.swift
//  
//
//  Created by Dave Duprey on 04/07/2024.
//

import CoreGraphics

#if canImport(UIKit)
import UIKit
#endif

/// This contains a set of fonts to use in an app or component.  it is based on iOS's
/// font styles.  It can be initialized using other fonts and it will then generate a collection
/// of fonts in appropriates sizes.
public struct W3WTypefaces {

  #if canImport(UIKit)
    static public let defaultTypefaceName = UIFont.systemFont(ofSize: W3WFontSizes().body).familyName
  #else
    static public let defaultTypefaceName = "SF Pro"
  #endif
  
  public var applyDynamicTypeScaling = true
  
  //lazy var sizes = self.getFontSizes()
  
  public var largeTitle: W3WFont  = W3WFont(familyName: defaultTypefaceName, size: W3WFontSizes().largeTitle)
  public var title1:    W3WFont  = W3WFont(familyName: defaultTypefaceName, size: W3WFontSizes().title1)
  public var title2:   W3WFont   = W3WFont(familyName: defaultTypefaceName, size: W3WFontSizes().title2)
  public var title3:   W3WFont   = W3WFont(familyName: defaultTypefaceName, size: W3WFontSizes().title3)
  public var headline: W3WFont   = W3WFont(familyName: defaultTypefaceName, size: W3WFontSizes().headline)
  public var body:      W3WFont   = W3WFont(familyName: defaultTypefaceName, size: W3WFontSizes().body)
  public var callout:    W3WFont   = W3WFont(familyName: defaultTypefaceName, size: W3WFontSizes().callout)
  public var subheadline: W3WFont  = W3WFont(familyName: defaultTypefaceName, size: W3WFontSizes().subheadline)
  public var footnote:    W3WFont  = W3WFont(familyName: defaultTypefaceName, size: W3WFontSizes().footnote)
  public var caption1:   W3WFont  = W3WFont(familyName: defaultTypefaceName, size: W3WFontSizes().caption1)
  public var caption2:  W3WFont  = W3WFont(familyName: defaultTypefaceName, size: W3WFontSizes().caption2)

  public var originalFont: W3WFont? = W3WFont(familyName: defaultTypefaceName, size: W3WFontSizes().body)
  
  public init() { }

  public init(font: W3WFont?) {
    self.originalFont = font
    if let font = font {
      self.reloadFonts()
    }
  }
  
  public init(body: W3WFont, largeTitle: W3WFont? = nil, title1: W3WFont? = nil, title2: W3WFont? = nil, title3: W3WFont? = nil, headline: W3WFont? = nil, callout: W3WFont? = nil, subheadline: W3WFont? = nil, footnote: W3WFont? = nil, caption1: W3WFont? = nil, caption2: W3WFont? = nil) {
    self.body       = body

    self.largeTitle = largeTitle ?? body
    self.title1    = title1 ?? body
    self.title2    = title2 ?? body
    self.title3     = title3 ?? body
    self.headline    = headline ?? body
    self.callout     = callout ?? body
    self.subheadline = subheadline ?? body
    self.footnote   = footnote ?? body
    self.caption1  = caption1 ?? body
    self.caption2 = caption2 ?? body
  }

  
  // MARK: Accessors
  
  
  public mutating func reloadFonts() {
    if let font = originalFont {
      self.largeTitle = font.with(size: W3WFontSizes().largeTitle)
      self.title1    = font.with(size: W3WFontSizes().title1)
      self.title2   = font.with(size: W3WFontSizes().title2)
      self.title3   = font.with(size: W3WFontSizes().title3)
      self.headline  = font.with(size: W3WFontSizes().headline)
      self.body       = font.with(size: W3WFontSizes().body)
      self.callout     = font.with(size: W3WFontSizes().callout)
      self.subheadline = font.with(size: W3WFontSizes().subheadline)
      self.footnote   = font.with(size: W3WFontSizes().footnote)
      self.caption1  = font.with(size: W3WFontSizes().caption1)
      self.caption2 = font.with(size: W3WFontSizes().caption2)
    }
  }
  
  
  // MARK: withs (builder modifiers)
  
  // place a different font into a style
  
  public func with(body: W3WFont)      -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(largeTitle: W3WFont) -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(title1: W3WFont)     -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(title2: W3WFont)    -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(title3: W3WFont)    -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(headline: W3WFont)  -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(callout: W3WFont)    -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(subheadline: W3WFont) -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(footnote: W3WFont)    -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(caption1: W3WFont)     -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(caption2: W3WFont)      -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }

  // change a font's weight
  
  public func with(body: W3WFontWeight)      -> W3WTypefaces { return W3WTypefaces(body: font(style: .body, weight: body), largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(largeTitle: W3WFontWeight) -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: font(style: .largeTitle, weight: largeTitle), title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(title1: W3WFontWeight)     -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: font(style: .title1, weight: title1), title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(title2: W3WFontWeight)    -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: font(style: .title2, weight: title2), title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(title3: W3WFontWeight)    -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: font(style: .title3, weight: title3), headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(headline: W3WFontWeight)  -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: font(style: .headline, weight: headline), callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(callout: W3WFontWeight)    -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: font(style: .callout, weight: callout), subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(subheadline: W3WFontWeight) -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: font(style: .subheadline, weight: subheadline), footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(footnote: W3WFontWeight)    -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: font(style: .footnote, weight: footnote), caption1: caption1, caption2: caption2) }
  public func with(caption1: W3WFontWeight)   -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: font(style: .caption1, weight: caption1), caption2: caption2) }
  public func with(caption2: W3WFontWeight)  -> W3WTypefaces { return W3WTypefaces(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: font(style: .caption2, weight: caption2)) }

  
  /// return a new font with the style and weight specified
  /// - Parameters:
  ///   - style: the font style to use
  ///   - weight: the weight for the new font
  public func font(style: W3WFontStyle, weight: W3WFontWeight) -> W3WFont {
    return with(font: self[style], weight: weight)
  }
  
  
  /// return a new font based on the one passed in with weight specified
  /// - Parameters:
  ///   - font: the font to model after
  ///   - weight: the weight for the new font
  func with(font: W3WFont, weight: W3WFontWeight) -> W3WFont {
    return font.with(weight: weight)
//    let newDescriptor = font.fontDescriptor.addingAttributes([.traits: [UIFontDescriptor.TraitKey.weight: weight]])
//    return W3WFont(descriptor: newDescriptor, size: font.pointSize)
  }
  
  
  /// get the preferred sizes for each style of font
  func getFontSizes() -> W3WFontSizes {
    return W3WFontSizes()
    //return W3WFontSizes(largeTitle: largeTitle.pointSize, title1: title1.pointSize, title2: title2.pointSize, title3: title3.pointSize, headline: headline.pointSize, body: body.pointSize, callout: callout.pointSize, subheadline: subheadline.pointSize, footnote: footnote.pointSize, caption1: caption1.pointSize, caption2: caption2.pointSize)
  }
  
  
  /// get a font of a particular style, usage: font[.body]
  /// - Parameters:
  ///   - style: the style to get
  public subscript(style: W3WFontStyle) -> W3WFont {
    switch style {
      case .largeTitle:  return largeTitle
      case .title1:      return title1
      case .title2:      return title2
      case .title3:      return title3
      case .headline:    return headline
      case .body:        return body
      case .callout:     return callout
      case .subheadline: return subheadline
      case .footnote:    return footnote
      case .caption1:    return caption1
      case .caption2:    return caption2
      default:           return body
    }
  }
  
  
  /// return a new font scaled for synamic type
  /// - Parameters:
  ///   - font: the font to model after
//  func scale(font f:W3WFont) -> W3WFont {
//    let fontScaleFactor = UIFontMetrics(forTextStyle: .body).scaledValue(for: 100.0) / 100.0
//    return UIFont(descriptor: f.fontDescriptor, size: f.pointSize * fontScaleFactor)
//  }
  
}
