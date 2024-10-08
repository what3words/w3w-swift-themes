//
//  File.swift
//  
//
//  Created by Dave Duprey on 01/09/2023.
//

import CoreGraphics
#if canImport(UIKit)
import UIKit
#endif

public extension W3WCornerRadius {
  static let none:       W3WCornerRadius =  0.0
  static let extraSmall: W3WCornerRadius =  4.0
  static let small:      W3WCornerRadius =  8.0
  static let regular:    W3WCornerRadius =  12.0
  static let large:      W3WCornerRadius =  16.0
  static let extraLarge: W3WCornerRadius =  32.0
  static let oval      = W3WCornerRadius(floatLiteral: .infinity)
  static let circle    = W3WCornerRadius(floatLiteral: .nan)

  @available(*, deprecated, renamed: "extraSmall")
  static let medium:   W3WCornerRadius =  4.0
  @available(*, deprecated, renamed: "small")
  static let soft:       W3WCornerRadius =  8.0
  @available(*, deprecated, message: "use: large")
  static let softer:     W3WCornerRadius = 14.0
  @available(*, deprecated, message: "use: large")
  static let verySoft:   W3WCornerRadius = 16.0
}


public extension W3WFontWeight {
  #if canImport(UIKit)
  static let none: W3WFontWeight = 0.0
  static let ultralight = W3WFontWeight(value: UIFont.Weight.ultraLight.rawValue)
  static let thin      = W3WFontWeight(value: UIFont.Weight.thin.rawValue)
  static let light    = W3WFontWeight(value: UIFont.Weight.light.rawValue)
  static let regular  = W3WFontWeight(value: UIFont.Weight.regular.rawValue)
  static let medium   = W3WFontWeight(value: UIFont.Weight.medium.rawValue)
  static let semibold = W3WFontWeight(value: UIFont.Weight.semibold.rawValue)
  static let bold     = W3WFontWeight(value: UIFont.Weight.bold.rawValue)
  static let heavy    = W3WFontWeight(value: UIFont.Weight.heavy.rawValue)
  static let black    = W3WFontWeight(value: UIFont.Weight.black.rawValue)
  #else
  // values from here: https://bugzilla.gnome.org/show_bug.cgi?id=766148
  static let none: W3WFontWeight = 0.0
  static let ultralight: W3WFontWeight = -0.800000
  static let thin: W3WFontWeight = -0.600000
  static let light: W3WFontWeight = -0.400000
  static let regular: W3WFontWeight = 0.000000
  static let medium: W3WFontWeight = 0.230000
  static let semibold: W3WFontWeight = 0.300000
  static let bold: W3WFontWeight = 0.400000
  static let heavy: W3WFontWeight = 0.560000
  static let black: W3WFontWeight = 0.620000
  #endif
}


public extension W3WIconSize {
  static let smallIcon  = W3WIconSize(value: CGSize(width: 16.0, height: 16.0))
  static let mediumIcon = W3WIconSize(value: CGSize(width: 32.0, height: 32.0))
  static let largeIcon  = W3WIconSize(value: CGSize(width: 64.0, height: 64.0))
  static let handleIcon = W3WIconSize(value: CGSize(width: 40.0, height: 6.0))
  static let w3wLogoWithTextIcon = W3WIconSize(value: CGSize(width: 84.0, height: 14.0))
}


public extension W3WLineThickness {
  static let none:       W3WLineThickness = 0.0
  static let onePoint:   W3WLineThickness = 1.0
  static let twoPoint:   W3WLineThickness = 2.0
  static let threePoint: W3WLineThickness = 2.0
  static let fourPoint:  W3WLineThickness = 4.0
}


public extension W3WMargin {
  static let none:   W3WMargin =  0.0
  static let half:   W3WMargin =  4.0
  static let one:    W3WMargin =  8.0
  static let two:    W3WMargin = 16.0
  static let three:  W3WMargin = 24.0
  static let four:   W3WMargin = 32.0
  static let five:   W3WMargin = 40.0

  @available(*, deprecated, renamed: "half")
  static let thin:   W3WMargin =  4.0
  @available(*, deprecated, renamed: "one")
  static let light:  W3WMargin =  8.0
  @available(*, deprecated, message: "use: two")
  static let medium: W3WMargin = 12.0
  @available(*, deprecated, message: "use: two")
  static let bold:   W3WMargin = 16.0
  @available(*, deprecated, renamed: "three")
  static let heavy:  W3WMargin = 24.0
}


public extension W3WPadding {
  static let none:   W3WPadding =  0.0
  static let single: W3WPadding =  1.0
  static let fine:   W3WPadding =  2.0
  static let thin:   W3WPadding =  4.0
  static let light:  W3WPadding =  8.0
  static let medium: W3WPadding = 12.0
  static let bold:   W3WPadding = 16.0
  static let heavy:  W3WPadding = 24.0
}


public extension W3WRowHeight {
  static let extraSmall       = W3WRowHeight(value: 32.0)
  static let small            = W3WRowHeight(value: 40.0)
  static let medium           = W3WRowHeight(value: 48.0)
  static let large            = W3WRowHeight(value: 64.0)
  static let extraLarge       = W3WRowHeight(value: 72.0)
  static let extraExtraLarge  = W3WRowHeight(value: 380.0)
}


public extension W3WShadow {
  static let none   = W3WShadow(opacity: 0.00, offset: 0.0, radius: 0.0)
  static let low    = W3WShadow(opacity: 0.33, offset: 0.0, radius: 5.0)
  static let medium = W3WShadow(opacity: 0.33, offset: 0.0, radius: 15.0)
  static let high   = W3WShadow(opacity: 0.33, offset: 0.0, radius: 30.0)
}
