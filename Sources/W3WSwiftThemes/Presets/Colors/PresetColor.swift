//
//  File.swift
//  
//
//  Created by Dave Duprey on 15/01/2024.
//


extension W3WColor {
  
  // basic colours
  
  static public let clear      = W3WColor(all: .clear)
  static public let white      = W3WColor(all: .white)
  static public let black      = W3WColor(all: .black)
  static public let text       = W3WColor(light: .black, dark: .white)
  static public let basic      = W3WColors(foreground: .text, background: .background)
  static public let foreground  = W3WColor(light: .black, dark: .white)
  static public let background   = W3WColor(light: .white, dark: .black)
  static public let secondary     = W3WColor(light: .darkBlue,   dark: .royalBlue)
  static public let tint           = W3WColor(light: .core.red50, dark: .core.red50)

  // colours for standard theme
  
  public static let standardBrandBase    = W3WColor(light: .hig.blueLight, dark: .hig.blueDark)

  public static let standardLabelsPrimary   = W3WColor(light: .core.grey100, dark: .core.grey100)
  public static let standardLabelsSecondary   = W3WColor(light: .hig.blueLight, dark:.hig.blueDark)
  public static let standardLabelsTertiary      = W3WColor(light: .core.grey30, dark: .core.grey100)
  public static let standardLabelsQuaternary      = W3WColor(light: .core.grey56, dark: .core.grey60)
  public static let standardLabelsPrimaryInverse    = W3WColor(light: .core.grey100, dark: .core.grey0)
  public static let standardLabelsPrimaryBlackInverse = W3WColor(light: .core.grey0, dark: .core.grey100)

  public static let standardFillsPrimary               = W3WColor(light: .hig.blueLight, dark: .hig.blueDark)
  public static let standardFillsSecondary             = W3WColor(light: .core.blue40, dark: .core.blue60)
  public static let standardFillsTertiary              = W3WColor(light: .core.blue20, dark: .core.blue50)
  public static let standardFillsQuaternary           = W3WColor(light: .hig.blueAlpha15, dark: .hig.blueAlpha24)
  public static let standardFillsQuinary             = W3WColor(light: .core.grey54Alpha16, dark: .core.grey54Alpha32)

  public static let standardSeparatorOpaque          = W3WColor(light: .core.grey82, dark: .core.grey24)
  public static let standardSeparatorNonOpaque        = W3WColor(light: .hig.grey32Alpha36, dark: .core.grey42Alpha65)
  
  public static let standardSystemBackgroundBasePrimary  = W3WColor(light: .core.grey100, dark: .core.grey0)
  public static let standardSystemBackgroundBaseSecondary = W3WColor(light: .core.grey99, dark: .core.grey10)
  public static let standardSystemBackgroundBaseTertiary   = W3WColor(light: .core.grey100, dark: .core.grey20)

  public static let standardSystemBackgroundElevatedPrimary  = W3WColor(light: .core.grey100, dark: .core.grey10)
  public static let standardSystemBackgroundElevatedSecondary = W3WColor(light: .core.grey99,  dark: .core.grey20)
  public static let standardSystemBackgroundElevatedTertiary   = W3WColor(light: .core.grey100, dark: .core.grey30)

  public static let standardGroupedBackgroundBasePrimary        = W3WColor(light: .core.grey99, dark: .core.grey0)
  public static let standardGroupedBackgroundBaseSecondary      = W3WColor(light: .core.grey100, dark: .core.grey10)
  public static let standardGroupedBackgroundBaseTertiary       = W3WColor(light: .core.grey99, dark: .core.grey20)

  public static let standardGroupedBackgroundElevatedPrimary    = W3WColor(light: .core.grey99, dark: .core.grey10)
  public static let standardGroupedBackgroundElevatedSecondary  = W3WColor(light: .core.grey100, dark: .core.grey20)
  public static let standardGroupedBackgroundElevatedTertiary  = W3WColor(light: .core.grey99, dark: .core.grey30)

  public static let standardSuccessBase                      = W3WColor(light: .core.greenAlpha20, dark: .core.greenAlpha60)
  public static let standardSuccessElevated                = W3WColor(light: .hig.greenLight, dark: .hig.greenDark)
  public static let standardSuccessLabel                 = W3WColor(light: .core.green20, dark: .core.grey20)

  public static let standardWarningBase               = W3WColor(light: .core.yellowAlpha20, dark: .core.yellowAlpha40)
  public static let standardWarningElevated         = W3WColor(light: .hig.yellowLight, dark: .hig.yellowDark)
  public static let standardWarningLabel          = W3WColor(light: .core.yellow20, dark: .core.yellow20)

  public static let standardErrorBase          = W3WColor(light: .core.orangeAlpha20, dark: .core.orangeAlpha40)
  public static let standardErrorElevated    = W3WColor(light: .hig.orangeLight, dark: .hig.orangeDark)
  public static let standardErrorLabel     = W3WColor(light: .core.orange20, dark: .core.orange20)

  // colours for what3words theme

  public static let w3wBrandBase         = W3WColor(light: .core.red50, dark: .core.red50)

  public static let w3wLabelsPrimary     = W3WColor.standardLabelsPrimary // W3WColor(light: .hig.grey100, dark: .hig.grey100)
  public static let w3wLabelsSecondary    = W3WColor(light: .core.blue50, dark: .core.blue72)
  public static let w3wLabelsTertiary      = W3WColor(light: .core.blue20, dark: .core.grey95)
  public static let w3wLabelsQuaternary      = W3WColor(light: .core.grey52, dark: .core.grey60)
  public static let w3wLabelsPrimaryInverse    = W3WColor(light: .white, dark: .black)
  public static let w3wLabelsPrimaryBlackInverse = W3WColor(light: .black, dark: .white)

  public static let w3wFillsPrimary              = W3WColor(light: .core.red50, dark: .core.red50)
  public static let w3wFillsSecondary           = W3WColor(light: .core.blue40, dark: .core.blue50)
  public static let w3wFillsTertiary           = W3WColor(light: .core.blue20, dark: .core.blue30)
  public static let w3wFillsQuaternary         = W3WColor(light: .core.blue90, dark: .core.blue30)
  public static let w3wFillsQuinary            = W3WColor.standardFillsQuinary

  public static let w3wSeparatorOpaque          = W3WColor.standardSeparatorOpaque
  public static let w3wSeparatorNonOpaque        = W3WColor.standardSeparatorNonOpaque
  
  public static let w3wSystemBackgroundBasePrimary  = W3WColor.standardSystemBackgroundBasePrimary
  public static let w3wSystemBackgroundBaseSecondary = W3WColor.standardSystemBackgroundBaseSecondary
  public static let w3wSystemBackgroundBaseTertiary   = W3WColor.standardSystemBackgroundBaseTertiary

  public static let w3wSystemBackgroundElevatedPrimary  = W3WColor.standardSystemBackgroundElevatedPrimary
  public static let w3wSystemBackgroundElevatedSecondary = W3WColor.standardSystemBackgroundElevatedSecondary
  public static let w3wSystemBackgroundElevatedTertiary   = W3WColor.standardSystemBackgroundElevatedTertiary

  public static let w3wGroupedBackgroundBasePrimary        = W3WColor.standardGroupedBackgroundBasePrimary
  public static let w3wGroupedBackgroundBaseSecondary      = W3WColor.standardGroupedBackgroundBaseSecondary
  public static let w3wGroupedBackgroundBaseTertiary       = W3WColor.standardGroupedBackgroundBaseTertiary

  public static let w3wGroupedBackgroundElevatedPrimary    = W3WColor.standardGroupedBackgroundElevatedPrimary
  public static let w3wGroupedBackgroundElevatedSecondary  = W3WColor.standardGroupedBackgroundElevatedSecondary
  public static let w3wGroupedBackgroundElevatedTertiary  = W3WColor.standardGroupedBackgroundElevatedTertiary

  public static let w3wSuccessBase                      = W3WColor(light: .hig.greenAlpha20, dark: .hig.greenAlpha40)
  public static let w3wSuccessElevated                = W3WColor(light: .hig.green50, dark: .hig.green60)
  public static let w3wSuccessLabel                 = W3WColor(light: .hig.green20, dark: .hig.green20)

  public static let w3wWarningBase               = W3WColor(light: .hig.yellowAlpha20, dark: .hig.yellowAlpha40)
  public static let w3wWarningElevated         = W3WColor(light: .hig.yellow50, dark: .hig.yellow60)
  public static let w3wWarningLabel          = W3WColor(light: .hig.yellow10, dark: .hig.yellow10)

  public static let w3wErrorBase           = W3WColor(light: .hig.orangeAlpha20, dark: .hig.orangeAlpha40)
  public static let w3wErrorElevated     = W3WColor(light: .hig.orange50, dark: .hig.orange60)
  public static let w3wErrorLabel      = W3WColor(light: .hig.orange10, dark: .hig.orange10)

  // brand
  
  static public let aqua          = W3WColor(all: .aqua)
  static public let blue          = W3WColor(all: .blue)
  static public let charcoal      = W3WColor(all: .charcoal)
  static public let coral         = W3WColor(all: .coral)
  static public let darkBlue       = W3WColor(all: .darkBlue)
  static public let darkBlueAlpha60 = W3WColor(all: .darkBlueAlpha60)
  static public let green          = W3WColor(all: .green)
  static public let lightBlue     = W3WColor(all: .lightBlue)
  static public let lightGrey     = W3WColor(all: .lightGrey)
  static public let mediumGrey    = W3WColor(all: .mediumGrey)
  static public let mustard       = W3WColor(all: .mustard)
  static public let orange        = W3WColor(all: .orange)
  static public let red           = W3WColor(all: .red)
  static public let yellow        = W3WColor(all: .yellow)
  static public let royalBlue     = W3WColor(all: .royalBlue)
  static public let cranberry     = W3WColor(all: .cranberry)
  static public let purple        = W3WColor(all: .purple)
  static public let powderBlue    = W3WColor(all: .powderBlue)
  static public let brightGreen   = W3WColor(all: .brightGreen)
  static public let darkGreen     = W3WColor(all: .darkGreen)
  static public let darkCyan      = W3WColor(all: .darkCyan)
  static public let darkerCyan    = W3WColor(all: .darkerCyan)
  static public let darkBrown     = W3WColor(all: .darkBrown)
  static public let brown         = W3WColor(all: .brown)
  static public let darkerBrown   = W3WColor(all: .darkerBrown)
  static public let dullRed       = W3WColor(all: .dullRed)
  static public let darkDarkBlue  = W3WColor(all: .darkDarkBlue)
  static public let lightCyan     = W3WColor(all: .lightCyan)

  
}
