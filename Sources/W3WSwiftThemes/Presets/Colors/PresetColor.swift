//
//  File.swift
//  
//
//  Created by Dave Duprey on 15/01/2024.
//

import UIKit


extension W3WColor {
  
  // basic colours
  
  static public let clear      = W3WColor(all: .grey0Alpha0)
  static public let white      = W3WColor(all: .white)
  static public let black      = W3WColor(all: .black)
  static public let text       = W3WColor(light: .black, dark: .white)
  static public let basic      = W3WColors(foreground: .text, background: .background)
  static public let foreground  = W3WColor(light: .black, dark: .white)
  static public let background   = W3WColor(light: .white, dark: .black)
  static public let secondary     = W3WColor(light: .darkBlue,   dark: .royalBlue)
  static public let tint           = W3WColor(light: .red50, dark: .red50)
  static public let lightBlue  = W3WColor(all: .darkBlueAlpha60)

  // colours for standard theme
  
  public static let standardBrandBase    = W3WColor(light: .blueLight, dark: .blueDark)

  public static let standardLabelsPrimary   = W3WColor(light: .grey100, dark: .grey100)
  public static let standardLabelsSecondary   = W3WColor(light: .blueLight, dark: .blueDark)
  public static let standardLabelsTertiary      = W3WColor(light: .grey30, dark: .grey100)
  public static let standardLabelsQuaternary      = W3WColor(light: .grey56, dark: .grey60)
  public static let standardLabelsPrimaryInverse    = W3WColor(light: .grey100, dark: .grey0)
  public static let standardLabelsPrimaryBlackInverse = W3WColor(light: .grey0, dark: .grey100)

  public static let standardFillsPrimary               = W3WColor(light: .blueLight, dark: .blueDark)
  public static let standardFillsSecondary             = W3WColor(light: .blue60, dark: .blue60)
  public static let standardFillsTertiary             = W3WColor(light: .blueAlpha15, dark: .blueAlpha15)
  public static let standardFillsQuaternary          = W3WColor(light: .grey54Alpha15, dark: .grey54Alpha24)

  public static let standardSeparatorOpaque          = W3WColor(light: .grey82, dark: .grey24)
  public static let standardSeparatorNonOpaque        = W3WColor(light: .grey32Alpha36, dark: .grey42Alpha65)
  
  public static let standardSystemBackgroundBasePrimary  = W3WColor(light: .grey100, dark: .grey0)
  public static let standardSystemBackgroundBaseSecondary = W3WColor(light: .grey99, dark: .grey10)
  public static let standardSystemBackgroundBaseTertiary   = W3WColor(light: .grey100, dark: .grey20)

  public static let standardSystemBackgroundElevatedPrimary  = W3WColor(light: .grey100, dark: .grey10)
  public static let standardSystemBackgroundElevatedSecondary = W3WColor(light: .grey99,  dark: .grey20)
  public static let standardSystemBackgroundElevatedTertiary   = W3WColor(light: .grey100, dark: .grey30)

  public static let standardGroupedBackgroundBasePrimary        = W3WColor(light: .grey99, dark: .grey0)
  public static let standardGroupedBackgroundBaseSecondary      = W3WColor(light: .grey100, dark: .grey10)
  public static let standardGroupedBackgroundBaseTertiary       = W3WColor(light: .grey99, dark: .grey20)

  public static let standardGroupedBackgroundElevatedPrimary    = W3WColor(light: .grey99, dark: .grey10)
  public static let standardGroupedBackgroundElevatedSecondary  = W3WColor(light: .grey100, dark: .grey20)
  public static let standardGroupedBackgroundElevatedTertiary  = W3WColor(light: .grey99, dark: .grey30)

  public static let standardSuccessBase                      = W3WColor(light: .greenAlpha20, dark: .greenAlpha60)
  public static let standardSuccessElevated                = W3WColor(light: .greenLight, dark: .greenDark)
  public static let standardSuccessLabel                 = W3WColor(light: .green20, dark: .grey20)

  public static let standardWarningBase               = W3WColor(light: .yellowAlpha20, dark: .yellowAlpha20)
  public static let standardWarningElevated         = W3WColor(light: .yellowLight, dark: .yellowDark)
  public static let standardWarningLabel          = W3WColor(light: .yellow20, dark: .yellow20)

  public static let standardErrorBase          = W3WColor(light: .orangeAlpha20, dark: .orangeAlpha40)
  public static let standardErrorElevated    = W3WColor(light: .orangeLight, dark: .orangeDark)
  public static let standardErrorLabel     = W3WColor(light: .orange20, dark: .orange20)

  // colours for what3words theme

  public static let w3wBrandBase         = W3WColor(light: .red50, dark: .red50)

  public static let w3wLabelsPrimary     = W3WColor.standardLabelsPrimary // W3WColor(light: .grey100, dark: .grey100)
  public static let w3wLabelsSecondary    = W3WColor(light: .blue50, dark: .blue72)
  public static let w3wLabelsTertiary      = W3WColor(light: .blue20, dark: .grey95)
  public static let w3wLabelsQuaternary      = W3WColor(light: .grey52, dark: .grey60)
  public static let w3wLabelsPrimaryInverse    = W3WColor(light: .grey100, dark: .grey0)
  public static let w3wLabelsPrimaryBlackInverse = W3WColor(light: .grey0, dark: .grey100)

  public static let w3wFillsPrimary              = W3WColor(light: .red50, dark: .red50)
  public static let w3wFillsSecondary           = W3WColor(light: .blue40, dark: .blue40)
  public static let w3wFillsTertiary           = W3WColor(light: .blue90, dark: .blue20)
  public static let w3wFillsQuaternary         = W3WColor.standardFillsQuaternary

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

  public static let w3wSuccessBase                      = W3WColor(light: .greenAlpha20, dark: .greenAlpha40)
  public static let w3wSuccessElevated                = W3WColor(light: .green50, dark: .green50)
  public static let w3wSuccessLabel                 = W3WColor(light: .green20, dark: .grey20)

  public static let w3wWarningBase               = W3WColor(light: .yellowAlpha20, dark: .yellowAlpha40)
  public static let w3wWarningElevated         = W3WColor(light: .yellow50, dark: .yellow50)
  public static let w3wWarningLabel          = W3WColor(light: .yellow10, dark: .yellow10)

  public static let w3wErrorBase           = W3WColor(light: .orangeAlpha20, dark: .orangeAlpha40)
  public static let w3wErrorElevated     = W3WColor(light: .orange95, dark: .orange99)
  public static let w3wErrorLabel      = W3WColor(light: .orange10, dark: .orange10)

}
