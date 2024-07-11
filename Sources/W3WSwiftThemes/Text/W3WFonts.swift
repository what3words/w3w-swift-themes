//
//  File.swift
//
//
//  Created by Dave Duprey on 07/04/2022.
//

import CoreGraphics
#if canImport(UIKit)
import UIKit
#endif

/// This contains a set of fonts to use in an app or component.  it is based on iOS's
/// font styles.  It can be initialized using other fonts and it will then generate a collection
/// of fonts in appropriates sizes.
@available(*, deprecated, message: "use W3WTypefaces instead")
public struct W3WFonts {
#if canImport(UIKit)

  public var applyDynamicTypeScaling = true
  
  lazy var sizes = self.getFontSizes()
  
  public var largeTitle: UIFont  = .preferredFont(forTextStyle: .largeTitle)
  public var title1:    UIFont  = .preferredFont(forTextStyle: .title1)
  public var title2:   UIFont   = .preferredFont(forTextStyle: .title2)
  public var title3:   UIFont   = .preferredFont(forTextStyle: .title3)
  public var headline: UIFont   = .preferredFont(forTextStyle: .headline)
  public var body:      UIFont   = .preferredFont(forTextStyle: .body)
  public var callout:    UIFont   = .preferredFont(forTextStyle: .callout)
  public var subheadline: UIFont  = .preferredFont(forTextStyle: .subheadline)
  public var footnote:    UIFont  = .preferredFont(forTextStyle: .footnote)
  public var caption1:   UIFont  = .preferredFont(forTextStyle: .caption1)
  public var caption2:  UIFont  = .preferredFont(forTextStyle: .caption2)

  public var originalFont: UIFont?
  
  public init() { }

  public init(font: UIFont?) {
    self.originalFont = font
    if let font = font {
      self.largeTitle = font.withSize(sizes.largeTitle)
      self.title1    = font.withSize(sizes.title1)
      self.title2   = font.withSize(sizes.title2)
      self.title3   = font.withSize(sizes.title3)
      self.headline  = font.withSize(sizes.headline)
      self.body       = font.withSize(sizes.body)
      self.callout     = font.withSize(sizes.callout)
      self.subheadline = font.withSize(sizes.subheadline)
      self.footnote   = font.withSize(sizes.footnote)
      self.caption1  = font.withSize(sizes.caption1)
      self.caption2 = font.withSize(sizes.caption2)
    }
  }
  
  public init(body: UIFont, largeTitle: UIFont? = nil, title1: UIFont? = nil, title2: UIFont? = nil, title3: UIFont? = nil, headline: UIFont? = nil, callout: UIFont? = nil, subheadline: UIFont? = nil, footnote: UIFont? = nil, caption1: UIFont? = nil, caption2: UIFont? = nil) {
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

  
  // MARK: withs (builder modifiers)
  
  // place a different font into a style
  
  public func with(body: UIFont)      -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(largeTitle: UIFont) -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(title1: UIFont)     -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(title2: UIFont)    -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(title3: UIFont)    -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(headline: UIFont)  -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(callout: UIFont)    -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(subheadline: UIFont) -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(footnote: UIFont)    -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(caption1: UIFont)     -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(caption2: UIFont)      -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }

  // change a font's weight
  
  public func with(body: W3WFontWeight)      -> W3WFonts { return W3WFonts(body: font(style: .body, weight: body), largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(largeTitle: W3WFontWeight) -> W3WFonts { return W3WFonts(body: body, largeTitle: font(style: .largeTitle, weight: largeTitle), title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(title1: W3WFontWeight)     -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: font(style: .title1, weight: title1), title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(title2: W3WFontWeight)    -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: font(style: .title2, weight: title2), title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(title3: W3WFontWeight)    -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: font(style: .title3, weight: title3), headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(headline: W3WFontWeight)  -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: font(style: .headline, weight: headline), callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(callout: W3WFontWeight)    -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: font(style: .callout, weight: callout), subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(subheadline: W3WFontWeight) -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: font(style: .subheadline, weight: subheadline), footnote: footnote, caption1: caption1, caption2: caption2) }
  public func with(footnote: W3WFontWeight)    -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: font(style: .footnote, weight: footnote), caption1: caption1, caption2: caption2) }
  public func with(caption1: W3WFontWeight)   -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: font(style: .caption1, weight: caption1), caption2: caption2) }
  public func with(caption2: W3WFontWeight)  -> W3WFonts { return W3WFonts(body: body, largeTitle: largeTitle, title1: title1, title2: title2, title3: title3, headline: headline, callout: callout, subheadline: subheadline, footnote: footnote, caption1: caption1, caption2: font(style: .caption2, weight: caption2)) }

  
  /// return a new font with the style and weight specified
  /// - Parameters:
  ///   - style: the font style to use
  ///   - weight: the weight for the new font
  public func font(style: W3WFontStyle, weight: W3WFontWeight) -> UIFont {
    return withWeight(font: self[style], weight: weight)
  }
  
  
  /// return a new font based on the one passed in with weight specified
  /// - Parameters:
  ///   - font: the font to model after
  ///   - weight: the weight for the new font
  func withWeight(font: UIFont, weight: W3WFontWeight) -> UIFont {
    let newDescriptor = font.fontDescriptor.addingAttributes([.traits: [UIFontDescriptor.TraitKey.weight: weight]])
    return UIFont(descriptor: newDescriptor, size: font.pointSize)
  }

  
  /// get the preferred sizes for each style of font
  func getFontSizes() -> W3WFontSizes {
    return W3WFontSizes(largeTitle: largeTitle.pointSize, title1: title1.pointSize, title2: title2.pointSize, title3: title3.pointSize, headline: headline.pointSize, body: body.pointSize, callout: callout.pointSize, subheadline: subheadline.pointSize, footnote: footnote.pointSize, caption1: caption1.pointSize, caption2: caption2.pointSize)
  }
  
  
  /// get a font of a particular style, usage: font[.body]
  /// - Parameters:
  ///   - style: the style to get
  public subscript(style: W3WFontStyle) -> UIFont {
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
  func scale(font f:UIFont) -> UIFont {
    let fontScaleFactor = UIFontMetrics(forTextStyle: .body).scaledValue(for: 100.0) / 100.0
    return UIFont(descriptor: f.fontDescriptor, size: f.pointSize * fontScaleFactor)
  }

  
#else

  // temp fix to allow compiling on macOS
  public func with(body: W3WFontWeight)      -> W3WFonts { self }
  public func with(largeTitle: W3WFontWeight) -> W3WFonts { self }
  public func with(title1: W3WFontWeight)  -> W3WFonts { self }
  public func with(title2: W3WFontWeight)    -> W3WFonts { self }
  public func with(title3: W3WFontWeight)    -> W3WFonts { self }
  public func with(headline: W3WFontWeight)  -> W3WFonts { self }
  public func with(callout: W3WFontWeight)    -> W3WFonts { self }
  public func with(subheadline: W3WFontWeight) -> W3WFonts { self }
  public func with(footnote: W3WFontWeight)    -> W3WFonts { self }
  public func with(caption1: W3WFontWeight)   -> W3WFonts { self }
  public func with(caption2: W3WFontWeight)  -> W3WFonts { self }
  
  
#endif

}
