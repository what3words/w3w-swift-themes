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

  public var borders:     W3WBorders = W3WBorders()
  public var corners:     W3WCorners = W3WCorners()
  public var shadows:      W3WShadows = W3WShadows()
  public var fonts:         W3WFonts?
  public var textAlignments: W3WTextAlignments = W3WTextAlignments()
  public var paddings:        W3WPaddings = W3WPaddings()
  public var separators:       W3WSeparators = W3WSeparators()
  public var rowHeights:       W3WRowHeights = W3WRowHeights()
  public var lineThicknesses:  W3WLineThicknesses = W3WLineThicknesses()
  public var visualEffects:    W3WVisualEffects?

  @available(*, deprecated)
  public let border:        W3WLineThickness?
  @available(*, deprecated)
  public let cornerRadius:  W3WCornerRadius?
  @available(*, deprecated)
  public let shadow:        W3WShadow?
  @available(*, deprecated)
  public let textAlignment: W3WTextAlignment?
  @available(*, deprecated)
  public let padding:       W3WPadding?
  @available(*, deprecated)
  public let separator:     W3WLineThickness?
  @available(*, deprecated)
  public let rowHeight:     W3WRowHeight?
  @available(*, deprecated)
  public let lineThickness: W3WLineThickness?
  @available(*, deprecated)
  public var visualEffect:  W3WVisualEffect?


  public init(borders: W3WBorders, corners: W3WCorners, shadows: W3WShadows, fonts: W3WFonts?, textAlignments: W3WTextAlignments, paddings: W3WPaddings, separators: W3WSeparators, rowHeights: W3WRowHeights, lineThicknesses:  W3WLineThicknesses, visualEffects: W3WVisualEffects?) {
    self.borders = borders
    self.corners = corners
    self.shadows = shadows
    self.fonts = fonts
    self.textAlignments = textAlignments
    self.paddings = paddings
    self.separators = separators
    self.rowHeights = rowHeights
    self.lineThicknesses = lineThicknesses
    self.visualEffects = visualEffects
    
    border = nil
    cornerRadius = nil
    shadow = nil
    textAlignment = nil
    padding = .medium
    separator = nil
    rowHeight = nil
    lineThickness = nil
    visualEffect = nil
  }

  
  /// initiate with any number of optional parameters, all other settings will be ignored / left as default
  public init(border: W3WLineThickness? = nil, 
              cornerRadius: W3WCornerRadius? = nil,
              shadow: W3WShadow? = nil,
              fonts: W3WFonts? = nil,
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
    self.fonts          = style?.fonts
    self.textAlignment  = style?.textAlignment
    self.padding        = style?.padding
    self.separator      = style?.separator
    self.rowHeight      = style?.rowHeight
    self.lineThickness  = style?.lineThickness
    self.visualEffect   = style?.visualEffect
  }

  
  // MARK: Withs (builders)
  

  public func with(border: W3WLineThickness?)      -> W3WStyles  { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, fonts: fonts, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }
  public func with(cornerRadius: W3WCornerRadius?) -> W3WStyles  { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, fonts: fonts, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }
  public func with(shadow: W3WShadow?)             -> W3WStyles  { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, fonts: fonts, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }
  public func with(fonts: W3WFonts?)               -> W3WStyles  { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, fonts: fonts, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }
  public func with(textAlignment: W3WTextAlignment?) -> W3WStyles  { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, fonts: fonts, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }
  public func with(padding: W3WPadding?)           -> W3WStyles  { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, fonts: fonts, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }
  public func with(rowHeight: W3WRowHeight?)        -> W3WStyles  { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, fonts: fonts, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }
  public func with(lineThickness: W3WLineThickness?)  -> W3WStyles { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, fonts: fonts, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }
  public func with(visualEffect: W3WVisualEffect?)  -> W3WStyles { return W3WStyles(border: border, cornerRadius: cornerRadius, shadow: shadow, fonts: fonts, textAlignment: textAlignment, padding: padding, rowHeight: rowHeight, lineThickness: lineThickness, visualEffect: visualEffect) }


  public var description: String {
    return debugDescription
  }
  
  
  public var debugDescription: String {
    var retvals = [String]()
    
    if let b = border       { retvals.append("Border: "  + b.value.description) }
    if let c = cornerRadius { retvals.append("Corner: "  + c.value.description) }
    if let s = shadow       { retvals.append("Shadow: "  + s.radius.description) }
    if let f = fonts        { retvals.append("Font: "    + f.body.fontName + " " + f.body.pointSize.description) }
    if let t = textAlignment { retvals.append("Text alignment: " + "\(t.description)") }
    if let p = padding      { retvals.append("Padding: " + p.value.description) }
    
    return String(describing: type(of: self)) + ": " + retvals.joined(separator: ", ")
  }
  
  
}

  


//  public var borderNone:  W3WLineThickness?
//  public var borderOne:   W3WLineThickness?
//  public var borderTwo:   W3WLineThickness?
//  public var borderThree: W3WLineThickness?
//  public var borderFour:  W3WLineThickness?
  
//  public var cornerRadiusNone:       W3WCornerRadius?
//  public var cornerRadiusExtraSmall: W3WCornerRadius?
//  public var cornerRadiusSmall:      W3WCornerRadius?
//  public var cornerRadiusLarge:      W3WCornerRadius?
//  public var cornerRadiusExtraLarge: W3WCornerRadius?

//  public var shadowNone:   W3WShadow?
//  public var shadowLow:    W3WShadow?
//  public var shadowMedium: W3WShadow?
//  public var shadowHigh:   W3WShadow?

//  public var textAlignmentLeft: W3WTextAlignment?
//  public var textAlignmentRight: W3WTextAlignment?
//  public var textAlignmentCentered: W3WTextAlignment?
//  public var textAlignmentNatural: W3WTextAlignment?
//  public var textAlignmentJustified: W3WTextAlignment?

//  public var paddingNone:    W3WPadding?
//  public var paddingSingle:  W3WPadding?
//  public var paddingFine:    W3WPadding?
//  public var paddingThin:    W3WPadding?
//  public var paddingLight:   W3WPadding?
//  public var paddingMedium:  W3WPadding?
//  public var paddingBold:    W3WPadding?
//  public var paddingHeavy:   W3WPadding?
  
//  public var separatorNone:  W3WLineThickness?
//  public var separatorOne:   W3WLineThickness?
//  public var separatorTwo:   W3WLineThickness?
//  public var separatorThree: W3WLineThickness?
//  public var separatorFour:  W3WLineThickness?

//  public var rowHeightExtraSmall: W3WRowHeight?
//  public var rowHeightSmall:       W3WRowHeight?
//  public var rowHeightMedium:       W3WRowHeight?
//  public var rowHeightLarge:         W3WRowHeight?
//  public var rowHeightExtraLarge:     W3WRowHeight?
//  public var rowHeightExtraExtraLarge: W3WRowHeight?

//  public var lineThicknessNone:  W3WLineThickness?
//  public var lineThicknessOne:   W3WLineThickness?
//  public var lineThicknessTwo:   W3WLineThickness?
//  public var lineThicknessThree: W3WLineThickness?
//  public var lineThicknessFour:  W3WLineThickness?



//public init(
//    borderNone:  W3WLineThickness? = nil,
//    borderOne:   W3WLineThickness? = nil,
//    borderTwo:   W3WLineThickness? = nil,
//    borderThree: W3WLineThickness? = nil,
//    borderFour:  W3WLineThickness? = nil,
//    cornerRadiusNone:       W3WCornerRadius? = nil,
//    cornerRadiusExtraSmall: W3WCornerRadius? = nil,
//    cornerRadiusSmall:      W3WCornerRadius? = nil,
//    cornerRadiusLarge:      W3WCornerRadius? = nil,
//    cornerRadiusExtraLarge: W3WCornerRadius? = nil,
//    shadowNone:   W3WShadow? = nil,
//    shadowLow:    W3WShadow? = nil,
//    shadowMedium: W3WShadow? = nil,
//    shadowHigh:   W3WShadow? = nil,
//    fonts:         W3WFonts? = nil,
//    //textAlignmentLeft: W3WTextAlignment? = nil,
//    //textAlignmentRight: W3WTextAlignment? = nil,
//    //textAlignmentCentered: W3WTextAlignment? = nil,
//    //textAlignmentNatural: W3WTextAlignment? = nil,
//    //textAlignmentJustified: W3WTextAlignment? = nil,
//    paddingNone:    W3WPadding? = nil,
//    paddingSingle:  W3WPadding? = nil,
//    paddingFine:    W3WPadding? = nil,
//    paddingThin:    W3WPadding? = nil,
//    paddingLight:   W3WPadding? = nil,
//    paddingMedium:  W3WPadding? = nil,
//    paddingBold:    W3WPadding? = nil,
//    paddingHeavy:   W3WPadding? = nil,
//    separatorNone:  W3WLineThickness? = nil,
//    separatorOne:   W3WLineThickness? = nil,
//    separatorTwo:   W3WLineThickness? = nil,
//    separatorThree: W3WLineThickness? = nil,
//    separatorFour:  W3WLineThickness? = nil,
//    rowHeightExtraSmall: W3WRowHeight? = nil,
//    rowHeightSmall:       W3WRowHeight? = nil,
//    rowHeightMedium:       W3WRowHeight? = nil,
//    rowHeightLarge:         W3WRowHeight? = nil,
//    rowHeightExtraLarge:     W3WRowHeight? = nil,
//    rowHeightExtraExtraLarge: W3WRowHeight? = nil,
//    lineThicknessNone:  W3WLineThickness? = nil,
//    lineThicknessOne:   W3WLineThickness? = nil,
//    lineThicknessTwo:   W3WLineThickness? = nil,
//    lineThicknessThree: W3WLineThickness? = nil,
//    lineThicknessFour:  W3WLineThickness? = nil,
//    visualEffect:  W3WVisualEffect? = nil,
//
//    border: W3WLineThickness? = nil,
//    cornerRadius: W3WCornerRadius? = nil,
//    shadow: W3WShadow? = nil,
//    textAlignment: W3WTextAlignment? = nil,
//    padding: W3WPadding? = nil,
//    separator: W3WLineThickness? = nil,
//    rowHeight: W3WRowHeight? = nil,
//    lineThickness: W3WLineThickness? = nil
//  ) {
//    self.borderNone = borderNone
//    self.borderOne = borderOne
//    self.borderTwo = borderTwo
//    self.borderThree = borderThree
//    self.borderFour = borderFour
//    self.cornerRadiusNone = cornerRadiusNone
//    self.cornerRadiusExtraSmall = cornerRadiusExtraSmall
//    self.cornerRadiusSmall = cornerRadiusSmall
//    self.cornerRadiusLarge = cornerRadiusLarge
//    self.cornerRadiusExtraLarge = cornerRadiusExtraLarge
//    self.shadowNone = shadowNone
//    self.shadowLow = shadowLow
//    self.shadowMedium = shadowMedium
//    self.shadowHigh = shadowHigh
//    self.fonts = fonts
//    //self.textAlignmentLeft = textAlignmentLeft
//    //self.textAlignmentRight = textAlignmentRight
//    //self.textAlignmentCentered = textAlignmentCentered
//    //self.textAlignmentNatural = textAlignmentNatural
//    //self.textAlignmentJustified = textAlignmentJustified
//    self.paddingNone = paddingNone
//    self.paddingSingle = paddingSingle
//    self.paddingFine = paddingFine
//    self.paddingThin = paddingThin
//    self.paddingLight = paddingLight
//    self.paddingMedium = paddingMedium
//    self.paddingBold = paddingBold
//    self.paddingHeavy = paddingHeavy
//    self.separatorNone = separatorNone
//    self.separatorOne = separatorTwo
//    self.separatorTwo = separatorTwo
//    self.separatorThree = separatorThree
//    self.separatorFour = separatorFour
//    self.rowHeightExtraSmall = rowHeightExtraSmall
//    self.rowHeightSmall = rowHeightSmall
//    self.rowHeightMedium = rowHeightMedium
//    self.rowHeightLarge = rowHeightLarge
//    self.rowHeightExtraLarge = rowHeightExtraLarge
//    self.rowHeightExtraExtraLarge = rowHeightExtraExtraLarge
//    self.lineThicknessNone = lineThicknessNone
//    self.lineThicknessOne = lineThicknessOne
//    self.lineThicknessTwo = lineThicknessTwo
//    self.lineThicknessThree = lineThicknessThree
//    self.lineThicknessFour = lineThicknessFour
//    self.visualEffect   = visualEffect
//
//    self.border         = border
//    self.cornerRadius   = cornerRadius
//    self.shadow         = shadow
//    self.textAlignment  = textAlignment
//    self.padding        = padding
//    self.separator      = separator
//    self.rowHeight      = rowHeight
//    self.lineThickness  = lineThickness
//  }
//
