//
//  File.swift
//
//
//  Created by Dave Duprey on 07/04/2022.
//
import CoreGraphics

#if os(macOS)
import AppKit
#endif

#if canImport(UIKit)
import UIKit
#endif



/// A collection of style settings that can be applied to a UIView
public struct W3WStyles: CustomDebugStringConvertible, CustomStringConvertible {

  public let border:        W3WLineThickness?
  public let cornerRadius:  W3WCornerRadius?
  public let shadow:        W3WShadow?
  public let font:          W3WFont?
  public let textAlignment: W3WTextAlignment?
  public let padding:       W3WPadding?
  public let separator:     W3WLineThickness?
  public let rowHeight:     W3WRowHeight?
  public let lineThickness: W3WLineThickness?
  public var visualEffect:  W3WVisualEffect?

  @available(*, deprecated, message: "Moved to W3Wtheme")
  public var fonts:         W3WFonts?


  /// initiate with any number of optional parameters, all other settings will be ignored / left as default
  public init(border: W3WLineThickness? = nil,
              cornerRadius: W3WCornerRadius? = nil,
              shadow: W3WShadow? = nil,
              font: W3WFont? = nil,
              textAlignment: W3WTextAlignment? = nil,
              padding: W3WPadding? = nil,
              separator: W3WLineThickness? = nil,
              rowHeight: W3WRowHeight? = nil,
              lineThickness: W3WLineThickness? = nil,
              visualEffect: W3WVisualEffect? = nil) {
    self.border         = border
    self.cornerRadius   = cornerRadius
    self.shadow         = shadow
    self.font           = font
    self.textAlignment  = textAlignment
    self.padding        = padding
    self.separator      = separator
    self.rowHeight      = rowHeight
    self.lineThickness  = lineThickness
    self.visualEffect   = visualEffect
  }
  
  
  /// initiate with any number of optional parameters, all other settings will be ignored / left as default
  @available(*, deprecated, message: "fonts:W3WFonts has been replaced with font:W3WFont")
  public init(border: W3WLineThickness? = nil,
              cornerRadius: W3WCornerRadius? = nil,
              shadow: W3WShadow? = nil,
              fonts: W3WFonts?,
              textAlignment: W3WTextAlignment? = nil,
              padding: W3WPadding? = nil,
              separator: W3WLineThickness? = nil,
              rowHeight: W3WRowHeight? = nil,
              lineThickness: W3WLineThickness? = nil,
              visualEffect: W3WVisualEffect? = nil) {
    self.border         = border
    self.cornerRadius   = cornerRadius
    self.shadow         = shadow
    self.fonts          = fonts
    self.font           = nil
    self.textAlignment  = textAlignment
    self.padding        = padding
    self.separator      = separator
    self.rowHeight      = rowHeight
    self.lineThickness  = lineThickness
    self.visualEffect   = visualEffect
  }
  
  
  init(style: W3WStyles?) {
    self.border         = style?.border
    self.cornerRadius   = style?.cornerRadius
    self.shadow         = style?.shadow
    //self.fonts          = style?.fonts
    self.font           = style?.font
    self.textAlignment  = style?.textAlignment
    self.padding        = style?.padding
    self.separator      = style?.separator
    self.rowHeight      = style?.rowHeight
    self.lineThickness  = style?.lineThickness
    self.visualEffect   = style?.visualEffect
  }

  
  // MARK: Withs (builders)
  

  public func with(border: W3WLineThickness?)      -> W3WStyles  { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, font: font, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }
  public func with(cornerRadius: W3WCornerRadius?) -> W3WStyles  { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, font: font, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }
  public func with(shadow: W3WShadow?)             -> W3WStyles  { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, font: font, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }
  public func with(font: W3WFont?)                  -> W3WStyles  { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, font: font, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }
  public func with(textAlignment: W3WTextAlignment?) -> W3WStyles  { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, font: font, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }
  public func with(padding: W3WPadding?)              -> W3WStyles  { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, font: font, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }
  public func with(rowHeight: W3WRowHeight?)          -> W3WStyles  { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, font: font, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }
  public func with(lineThickness: W3WLineThickness?)  -> W3WStyles { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, font: font, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }
  public func with(visualEffect: W3WVisualEffect?)   -> W3WStyles { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, font: font, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }

  @available(*, deprecated, renamed: "with(font:)", message: "replaced with(font:)")
  public func with(fonts: W3WFonts?) -> W3WStyles  { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, fonts: fonts, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }


  public var description: String {
    return debugDescription
  }
  
  
  public var debugDescription: String {
    var retvals = [String]()
    
    if let b = border        { retvals.append("Border: "  + b.value.description) }
    if let c = cornerRadius  { retvals.append("Corner: "  + c.value.description) }
    if let s = shadow        { retvals.append("Shadow: "  + s.radius.description) }
    if let f = font          { retvals.append("Font: "    + f.description) }
    if let t = textAlignment { retvals.append("Text alignment: " + "\(t.description)") }
    if let p = padding       { retvals.append("Padding: " + p.value.description) }
    
    return String(describing: type(of: self)) + ": " + retvals.joined(separator: ", ")
  }
  
  
}

