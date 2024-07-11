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
    secondary:  .standardLabelsQuaternary,
    highlight:  W3WBasicColors(background: .standardFillsTertiary),
    border:     .standardSeparatorOpaque
  )
  
  
  // MARK: what3words Colours
  
  static public let w3w = W3WColors(
    foreground: .w3wLabelsPrimaryBlackInverse,
    background: .w3wSystemBackgroundBasePrimary,
    tint:       .w3wBrandBase,
    secondary:  .w3wLabelsQuaternary,
    highlight:  W3WBasicColors(background: .w3wFillsTertiary),
    border:     .w3wSeparatorOpaque
  )
  
  
  // MARK: Buttons
  
  static public func buttonPrimary(theme: W3WTheme? = .standard)    -> W3WColors { W3WColors(foreground: theme?.labelsPrimary, background: theme?.brandBase) }
  static public func buttonSecondary(theme: W3WTheme? = .standard)  -> W3WColors { W3WColors(foreground: theme?.labelsPrimary, background: theme?.fillsSecondary) }
  static public func buttonTertiary(theme: W3WTheme? = .standard)   -> W3WColors { W3WColors(foreground: theme?.labelsPrimary, background: theme?.fillsTertiary) }
  static public func buttonQuaternary(theme: W3WTheme? = .standard) -> W3WColors { W3WColors(foreground: theme?.labelsSecondary, background: theme?.fillsQuaternary) }
  static public func buttonQuinary(theme: W3WTheme? = .standard)    -> W3WColors { W3WColors(foreground: theme?.labelsSecondary, background: theme?.fillsQuinary) }
  static public func buttonSenary(theme: W3WTheme? = .standard)     -> W3WColors { W3WColors(foreground: theme?.labelsTertiary, background: .clear) }
  static public func buttonSeptenary(theme: W3WTheme? = .standard)  -> W3WColors { W3WColors(foreground: theme?.labelsQuaternary) }
  
  // MARK: Old
  
  
  static public let standardOld = W3WColors(
    foreground: .standardLabelsPrimaryBlackInverse,
    background: .standardSystemBackgroundBasePrimary,
    tint:       .standardBrandBase,
    secondary:  .standardLabelsQuaternary,
    highlight:  W3WBasicColors(background: .standardFillsTertiary),
    border:     .standardSeparatorOpaque
  )
 
  static public let standardButtons    = W3WColors(
    foreground: .standardLabelsPrimaryBlackInverse,
    background: .standardFillsPrimary,
    tint:       .standardLabelsQuaternary,
    secondary:  .standardLabelsQuaternary,
    highlight:  W3WBasicColors(background: .standardFillsTertiary),
    border:     .standardSeparatorOpaque
  )
  
  static public let standardTextFields = W3WColors(
    foreground: .standardLabelsPrimaryBlackInverse,
    background: .standardSystemBackgroundBasePrimary,
    tint:       .standardLabelsQuaternary,
    secondary:  .standardLabelsQuaternary,
    highlight:  W3WBasicColors(background: .standardFillsTertiary),
    border:     .standardSeparatorOpaque
  )
  
  static public let standardLabels = W3WColors(
    foreground: .standardLabelsPrimaryBlackInverse,
    background: .standardSystemBackgroundBasePrimary,
    tint:       .standardLabelsQuaternary,
    secondary:  .standardLabelsQuaternary,
    highlight:  W3WBasicColors(background: .standardFillsTertiary),
    border:     .standardSeparatorOpaque,
    error:      W3WBasicColors(foreground: .standardErrorElevated, background: .clear)
  )
  
  static public let standardCells = W3WColors(
    foreground: .standardLabelsTertiary,
    background: .standardSystemBackgroundBasePrimary,
    tint:       .standardLabelsQuaternary,
    secondary:  .standardLabelsQuaternary,
    brand:      .standardBrandBase,
    highlight:  W3WBasicColors(foreground: .standardLabelsPrimaryBlackInverse, background: .standardFillsPrimary),
    border:     .standardSeparatorOpaque,
    header:     W3WBasicColors(foreground: .standardSeparatorNonOpaque, background: .standardSystemBackgroundBaseTertiary)
  )
  
  static public let standardIcons = W3WColors(
    foreground: .standardLabelsPrimaryBlackInverse,
    background: .clear,
    tint:       .text,
    secondary:  .text
  )
  
  static public let standardVoice = W3WColors(
    foreground: .standardBrandBase,
    background: .clear,
    tint:       .standardBrandBase,
    secondary:  .standardLabelsQuaternary
  )
  
  static public let standardOcr = W3WColors(
    foreground: .standardLabelsTertiary,
    background: .standardSystemBackgroundBasePrimary,
    secondary:  .standardLabelsQuaternary,
    secondaryBackground: .standardSystemBackgroundBaseSecondary,
    brand:      .standardBrandBase,
    border:     .clear,
    separator:  .standardSeparatorNonOpaque,
    success: W3WBasicColors(
      foreground: .standardLabelsPrimary,
      background: .standardSuccessElevated),
    error: W3WBasicColors(
      foreground: .standardErrorLabel,
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

  static public let standardMaps = W3WColors(
    foreground: .standardLabelsPrimary,
    background: .standardFillsSecondary,
    tint: .standardBrandBase,
    secondary: .standardSeparatorNonOpaque,
    line: .standardLabelsQuaternary
  )

  
  // MARK: what3words Colours

  static public let w3wOld = W3WColors(
    foreground: .w3wLabelsPrimaryBlackInverse,
    background: .w3wSystemBackgroundBasePrimary,
    tint:       .w3wBrandBase,
    secondary:  .w3wLabelsQuaternary,
    highlight:  W3WBasicColors(background: .w3wFillsTertiary),
    border:     .w3wSeparatorOpaque
  )
 
  static public let w3wButtons    = W3WColors(
    foreground: .w3wLabelsPrimaryBlackInverse,
    background: .w3wFillsPrimary,
    tint:       .w3wLabelsQuaternary,
    secondary:  .w3wLabelsQuaternary,
    highlight:  W3WBasicColors(background: .w3wFillsTertiary),
    border:     .w3wSeparatorOpaque
  )
  
  static public let w3wTextFields = W3WColors(
    foreground: .w3wLabelsPrimaryBlackInverse,
    background: .w3wSystemBackgroundBasePrimary,
    tint:       .w3wLabelsQuaternary,
    secondary:  .w3wLabelsQuaternary,
    highlight:  W3WBasicColors(background: .w3wFillsTertiary),
    border:     .w3wSeparatorOpaque
  )
  
  static public let w3wLabels = W3WColors(
    foreground: .w3wLabelsPrimaryBlackInverse,
    background: .w3wSystemBackgroundBasePrimary,
    tint:       .w3wLabelsQuaternary,
    secondary:  .w3wLabelsQuaternary,
    highlight:  W3WBasicColors(background: .w3wFillsTertiary),
    border:     .w3wSeparatorOpaque,
    error:      W3WBasicColors(foreground: .w3wErrorElevated, background: .clear)
  )
  
  static public let w3wCells = W3WColors(
    foreground: .w3wLabelsTertiary,
    background: .w3wSystemBackgroundBasePrimary,
    tint:       .w3wLabelsQuaternary,
    secondary:  .w3wLabelsQuaternary,
    brand:      .w3wBrandBase,
    highlight:  W3WBasicColors(foreground: .w3wLabelsPrimaryBlackInverse, background: .w3wFillsPrimary),
    border:     .w3wSeparatorOpaque,
    header:     W3WBasicColors(foreground: .w3wSeparatorNonOpaque, background: .w3wSystemBackgroundBaseTertiary)
  )
  
  static public let w3wIcons = W3WColors(
    foreground: .w3wLabelsPrimaryBlackInverse,
    background: .clear,
    tint:       .text,
    secondary:  .text
  )
  
  static public let w3wVoice = W3WColors(
    foreground: .w3wBrandBase,
    background: .clear,
    tint:       .w3wBrandBase,
    secondary:  .w3wLabelsQuaternary
  )
  
  static public let w3wOcr = W3WColors(
    foreground: .w3wLabelsTertiary,
    background: .w3wSystemBackgroundBasePrimary,
    secondary:  .w3wLabelsQuaternary,
    secondaryBackground: .w3wSystemBackgroundBaseSecondary,
    brand:      .w3wBrandBase,
    border:     .clear,
    separator:  .w3wSeparatorNonOpaque,
    success: W3WBasicColors(
      foreground: .w3wLabelsPrimary,
      background: .w3wSuccessElevated),
    error: W3WBasicColors(
      foreground: .w3wErrorLabel,
      background: .w3wErrorElevated),
    line: .w3wLabelsPrimary
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
