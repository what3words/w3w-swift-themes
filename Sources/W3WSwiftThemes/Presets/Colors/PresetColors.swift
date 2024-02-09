//
//  File.swift
//  
//
//  Created by Dave Duprey on 15/01/2024.
//

import Foundation


extension W3WColors {

  // MARK: Standard Colours
  
  static public let standard = W3WColors(
    foreground: .standardLabelsPrimaryBlackInverse,
    background: .standardSystemBackgroundBasePrimary,
    tint:       .standardBrandBase,
    secondary:  .standardLabelsSecondary,
    highlight:  W3WBasicColors(background: .w3wFillsTertiary),
    border:     .standardSeparatorOpaque
  )
 
  static public let standardButtons    = W3WColors(
    foreground: .standardLabelsPrimaryBlackInverse,
    background: .standardFillsPrimary,
    tint: .standardLabelsQuaternary,
    secondary: .standardSeparatorNonOpaque,
    highlight: W3WBasicColors(background: .w3wFillsTertiary),
    border: .standardSeparatorOpaque
  )
  
  static public let standardTextFields = W3WColors(
    foreground: .standardLabelsPrimaryBlackInverse,
    background: .standardSystemBackgroundBasePrimary,
    tint: .standardLabelsQuaternary,
    secondary: .standardSeparatorNonOpaque,
    highlight: W3WBasicColors(background: .w3wFillsTertiary),
    border: .standardSeparatorOpaque
  )
  
  static public let standardLabels = W3WColors(
    foreground: .standardLabelsPrimaryBlackInverse,
    background: .standardSystemBackgroundBasePrimary,
    tint: .standardLabelsQuaternary,
    secondary: .standardSeparatorNonOpaque,
    highlight: W3WBasicColors(background: .w3wFillsTertiary),
    border: .standardSeparatorOpaque,
    error: W3WBasicColors(foreground: .standardErrorElevated, background: .clear)
  )
  
  static public let standardCells = W3WColors(
    foreground: .standardLabelsPrimaryBlackInverse,
    background: .standardSystemBackgroundBasePrimary,
    tint: .standardLabelsQuaternary,
    secondary: .standardSeparatorNonOpaque,
    brand: .standardBrandBase,
    highlight: W3WBasicColors(foreground: .standardLabelsPrimaryBlackInverse, background: .standardFillsPrimary),
    border: .standardSeparatorOpaque,
    header: W3WBasicColors(foreground: .standardSeparatorNonOpaque, background: .standardSystemBackgroundBaseTertiary)
  )
  
  static public let standardIcons = W3WColors(
    foreground: .standardLabelsPrimaryBlackInverse,
    background: .clear,
    tint: .text,
    secondary: .text
  )
  
  static public let standardVoice = W3WColors(
    foreground: .standardBrandBase,
    background: .clear,
    tint: .standardBrandBase,
    secondary: .standardBrandBase
  )
  
  static public let standardOcr = W3WColors(
    background: .standardSystemBackgroundBasePrimary,
    separator: .standardLabelsPrimary,
    success: W3WBasicColors(
      foreground: .standardLabelsPrimary,
      background: .standardSuccessElevated),
    error: W3WBasicColors(
      foreground: .standardLabelsPrimary,
      background: .standardErrorElevated),
    line: .standardLabelsPrimary
  )

  static public let standardButtonFilled = W3WColors(
    foreground: .standardLabelsPrimary,
    background: .standardFillsPrimary
  )
  
  static public let standardButtonTinted = W3WColors(
    foreground: .standardFillsPrimary,
    background: W3WColor(all: .blue90)
  )
  
  static public let standardButtonGray = W3WColors(
    foreground: .text,
    background: W3WColor(light: .clear, dark: .black)
  )
  
  static public let standardButtonPlain = W3WColors(
    foreground: .standardFillsPrimary,
    background: .clear
  )

  static public let maps = W3WColors(
    foreground: .standardLabelsPrimary,
    background: .standardFillsSecondary,
    tint: .standardBrandBase,
    secondary: .w3wSeparatorNonOpaque,
    line: .standardLabelsQuaternary
  )

  
  // MARK: what3words Colours

  static public let w3w = W3WColors(
    foreground: .w3wLabelsPrimaryBlackInverse,
    background: .w3wSystemBackgroundBasePrimary,
    tint:       .w3wBrandBase,
    secondary:  .w3wLabelsSecondary,
    highlight:  W3WBasicColors(background: .w3wFillsTertiary),
    border:     .w3wSeparatorOpaque
  )
 
  static public let w3wButtons    = W3WColors(
    foreground: .w3wLabelsPrimaryBlackInverse,
    background: .w3wFillsPrimary,
    tint: .w3wLabelsQuaternary,
    secondary: .w3wSeparatorNonOpaque,
    highlight: W3WBasicColors(background: .w3wFillsTertiary),
    border: .w3wSeparatorOpaque
  )
  
  static public let w3wTextFields = W3WColors(
    foreground: .w3wLabelsPrimaryBlackInverse,
    background: .w3wSystemBackgroundBasePrimary,
    tint: .w3wLabelsQuaternary,
    secondary: .w3wSeparatorNonOpaque,
    highlight: W3WBasicColors(background: .w3wFillsTertiary),
    border: .w3wSeparatorOpaque
  )
  
  static public let w3wLabels = W3WColors(
    foreground: .w3wLabelsPrimaryBlackInverse,
    background: .w3wSystemBackgroundBasePrimary,
    tint: .w3wLabelsQuaternary,
    secondary: .w3wSeparatorNonOpaque,
    highlight: W3WBasicColors(background: .w3wFillsTertiary),
    border: .w3wSeparatorOpaque,
    error: W3WBasicColors(foreground: .w3wErrorElevated, background: .clear)
  )
  
  static public let w3wCells = W3WColors(
    foreground: .w3wLabelsPrimaryBlackInverse,
    background: .w3wSystemBackgroundBasePrimary,
    tint: .w3wLabelsQuaternary,
    secondary: .w3wSeparatorNonOpaque,
    brand: .w3wBrandBase,
    highlight: W3WBasicColors(foreground: .w3wLabelsPrimaryBlackInverse, background: .w3wFillsPrimary),
    border: .w3wSeparatorOpaque,
    header: W3WBasicColors(foreground: .w3wSeparatorNonOpaque, background: .w3wSystemBackgroundBaseTertiary)
  )
  
  static public let w3wIcons = W3WColors(
    foreground: .w3wLabelsPrimaryBlackInverse,
    background: .clear,
    tint: .text,
    secondary: .text
  )
  
  static public let w3wVoice = W3WColors(
    foreground: .w3wBrandBase,
    background: .clear,
    tint: .w3wBrandBase,
    secondary: .w3wBrandBase
  )
  
  static public let w3wOcr = W3WColors(
    background: .standardSystemBackgroundBasePrimary,
    separator: .standardLabelsPrimary,
    success: W3WBasicColors(
      foreground: .standardLabelsPrimary,
      background: .standardSuccessElevated),
    error: W3WBasicColors(
      foreground: .standardLabelsPrimary,
      background: .standardErrorElevated),
    line: .standardLabelsPrimary
  )

  static public let w3wButtonFilled = W3WColors(
    foreground: .w3wLabelsPrimary,
    background: .w3wFillsPrimary
  )
  
  static public let w3wButtonTinted = W3WColors(
    foreground: .w3wFillsPrimary,
    background: W3WColor(all: .blue90)
  )
  
  static public let w3wButtonGray = W3WColors(
    foreground: .text,
    background: W3WColor(light: .clear, dark: .black)
  )
  
  static public let w3wButtonPlain = W3WColors(
    foreground: .w3wFillsPrimary,
    background: .clear
  )

  static public let w3wMaps = W3WColors(
    foreground: .w3wLabelsPrimary,
    background: .w3wFillsSecondary,
    tint: .w3wBrandBase,
    secondary: .w3wSeparatorNonOpaque,
    line: .w3wLabelsQuaternary
  )

  
}