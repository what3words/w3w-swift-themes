//
//  File.swift
//  
//
//  Created by Dave Duprey on 15/01/2024.
//

import Foundation


extension W3WColors {
  
  static public let w3w = W3WColors(
    brandBase:    .w3wBrandBase,
    labelsPrimary:   .w3wLabelsPrimary,
    labelsSecondary:   .w3wLabelsSecondary,
    labelsTertiary:      .w3wLabelsTertiary,
    labelsQuaternary:      .w3wLabelsQuaternary,
    labelsPrimaryInverse:    .w3wLabelsPrimaryInverse,
    labelsPrimaryBlackInverse: .w3wLabelsPrimaryBlackInverse,
    fillsPrimary:               .w3wFillsPrimary,
    fillsSecondary:             .w3wFillsSecondary,
    fillsTertiary:             .w3wFillsTertiary,
    fillsQuaternary:          .w3wFillsQuaternary,
    separatorOpaque:          .w3wSeparatorOpaque,
    separatorNonOpaque:        .w3wSeparatorNonOpaque,
    systemBackgroundBasePrimary:  .w3wSystemBackgroundBasePrimary,
    systemBackgroundBaseSecondary: .w3wSystemBackgroundBaseSecondary,
    systemBackgroundBaseTertiary:   .w3wSystemBackgroundBaseTertiary,
    systemBackgroundElevatedPrimary:  .w3wSystemBackgroundElevatedPrimary,
    systemBackgroundElevatedSecondary: .w3wSystemBackgroundElevatedSecondary,
    systemBackgroundElevatedTertiary:   .w3wSystemBackgroundElevatedTertiary,
    groupedBackgroundBasePrimary:        .w3wGroupedBackgroundBasePrimary,
    groupedBackgroundBaseSecondary:      .w3wGroupedBackgroundBaseSecondary,
    groupedBackgroundBaseTertiary:       .w3wGroupedBackgroundBaseTertiary,
    groupedBackgroundElevatedPrimary:    .w3wGroupedBackgroundElevatedPrimary,
    groupedBackgroundElevatedSecondary:  .w3wGroupedBackgroundElevatedSecondary,
    groupedBackgroundElevatedTertiary:  .w3wGroupedBackgroundElevatedTertiary,
    successBase:                      .w3wSuccessBase,
    successElevated:                .w3wSuccessElevated,
    successLabel:                 .w3wSuccessLabel,
    warningBase:               .w3wWarningBase,
    warningElevated:         .w3wWarningElevated,
    warningLabel:          .w3wWarningElevated,
    errorBase:          .w3wErrorBase,
    errorElevated:    .w3wErrorElevated,
    errorLabel:     .w3wErrorLabel
  )

  
  static public let standard = W3WColors(
    brandBase:    .standardBrandBase,
    labelsPrimary:   .standardLabelsPrimary,
    labelsSecondary:   .standardLabelsSecondary,
    labelsTertiary:      .standardLabelsTertiary,
    labelsQuaternary:      .standardLabelsQuaternary,
    labelsPrimaryInverse:    .standardLabelsPrimaryInverse,
    labelsPrimaryBlackInverse: .standardLabelsPrimaryBlackInverse,
    fillsPrimary:               .standardFillsPrimary,
    fillsSecondary:             .standardFillsSecondary,
    fillsTertiary:             .standardFillsTertiary,
    fillsQuaternary:          .standardFillsQuaternary,
    separatorOpaque:          .standardSeparatorOpaque,
    separatorNonOpaque:        .standardSeparatorNonOpaque,
    systemBackgroundBasePrimary:  .standardSystemBackgroundBasePrimary,
    systemBackgroundBaseSecondary: .standardSystemBackgroundBaseSecondary,
    systemBackgroundBaseTertiary:   .standardSystemBackgroundBaseTertiary,
    systemBackgroundElevatedPrimary:  .standardSystemBackgroundElevatedPrimary,
    systemBackgroundElevatedSecondary: .standardSystemBackgroundElevatedSecondary,
    systemBackgroundElevatedTertiary:   .standardSystemBackgroundElevatedTertiary,
    groupedBackgroundBasePrimary:        .standardGroupedBackgroundBasePrimary,
    groupedBackgroundBaseSecondary:      .standardGroupedBackgroundBaseSecondary,
    groupedBackgroundBaseTertiary:       .standardGroupedBackgroundBaseTertiary,
    groupedBackgroundElevatedPrimary:    .standardGroupedBackgroundElevatedPrimary,
    groupedBackgroundElevatedSecondary:  .standardGroupedBackgroundElevatedSecondary,
    groupedBackgroundElevatedTertiary:  .standardGroupedBackgroundElevatedTertiary,
    successBase:                      .standardSuccessBase,
    successElevated:                .standardSuccessElevated,
    successLabel:                 .standardSuccessLabel,
    warningBase:               .standardWarningBase,
    warningElevated:         .standardWarningElevated,
    warningLabel:          .standardWarningElevated,
    errorBase:          .standardErrorBase,
    errorElevated:    .standardErrorElevated,
    errorLabel:     .standardErrorLabel
  )
  


  // MARK: Standard Colours
  
  @available(*, deprecated, message: "Use .standard instead")
  static public let standardButtons    = W3WColors(
    foreground: .standardLabelsPrimaryBlackInverse,
    background: .standardFillsPrimary,
    tint:       .standardLabelsQuaternary,
    secondary:  .standardLabelsQuaternary,
    highlight:  W3WBasicColors(background: .standardFillsTertiary),
    border:     .standardSeparatorOpaque
  )
  
  @available(*, deprecated, message: "Use .standard instead")
  static public let standardTextFields = W3WColors(
    foreground: .standardLabelsPrimaryBlackInverse,
    background: .standardSystemBackgroundBasePrimary,
    tint:       .standardLabelsQuaternary,
    secondary:  .standardLabelsQuaternary,
    highlight:  W3WBasicColors(background: .standardFillsTertiary),
    border:     .standardSeparatorOpaque
  )
  
  @available(*, deprecated, message: "Use .standard instead")
  static public let standardLabels = W3WColors(
    foreground: .standardLabelsPrimaryBlackInverse,
    background: .standardSystemBackgroundBasePrimary,
    tint:       .standardLabelsQuaternary,
    secondary:  .standardLabelsQuaternary,
    highlight:  W3WBasicColors(background: .standardFillsTertiary),
    border:     .standardSeparatorOpaque,
    error:      W3WBasicColors(foreground: .standardErrorElevated, background: .clear)
  )
  
  @available(*, deprecated, message: "Use .standard instead")
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
  
  @available(*, deprecated, message: "Use .standard instead")
  static public let standardIcons = W3WColors(
    foreground: .standardLabelsPrimaryBlackInverse,
    background: .clear,
    tint:       .text,
    secondary:  .text
  )
  
  @available(*, deprecated, message: "Use .standard instead")
  static public let standardVoice = W3WColors(
    foreground: .standardBrandBase,
    background: .clear,
    tint:       .standardBrandBase,
    secondary:  .standardLabelsQuaternary
  )
  
  @available(*, deprecated, message: "Use .standard instead")
  static public let standardOcr = W3WColors(
    foreground: .standardLabelsPrimaryBlackInverse,
    background: .standardSystemBackgroundBasePrimary,
    secondary:  .standardSystemBackgroundBaseSecondary,
    secondaryBackground: .standardSystemBackgroundBaseSecondary,
    border:     .clear,
    separator:  .standardLabelsPrimary,
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

  @available(*, deprecated, message: "Use .standard instead")
  static public let standardMaps = W3WColors(
    foreground: .standardLabelsPrimary,
    background: .standardFillsSecondary,
    tint: .standardBrandBase,
    secondary: .standardSeparatorNonOpaque,
    line: .standardLabelsQuaternary
  )

  
  // MARK: what3words Colours

  @available(*, deprecated, message: "Use .w3w instead")
  static public let w3wButtons    = W3WColors(
    foreground: .w3wLabelsPrimaryBlackInverse,
    background: .w3wFillsPrimary,
    tint:       .w3wLabelsQuaternary,
    secondary:  .w3wLabelsQuaternary,
    highlight:  W3WBasicColors(background: .w3wFillsTertiary),
    border:     .w3wSeparatorOpaque
  )
  
  @available(*, deprecated, message: "Use .w3w instead")
  static public let w3wTextFields = W3WColors(
    foreground: .w3wLabelsPrimaryBlackInverse,
    background: .w3wSystemBackgroundBasePrimary,
    tint:       .w3wLabelsQuaternary,
    secondary:  .w3wLabelsQuaternary,
    highlight:  W3WBasicColors(background: .w3wFillsTertiary),
    border:     .w3wSeparatorOpaque
  )
  
  @available(*, deprecated, message: "Use .w3w instead")
  static public let w3wLabels = W3WColors(
    foreground: .w3wLabelsPrimaryBlackInverse,
    background: .w3wSystemBackgroundBasePrimary,
    tint:       .w3wLabelsQuaternary,
    secondary:  .w3wLabelsQuaternary,
    highlight:  W3WBasicColors(background: .w3wFillsTertiary),
    border:     .w3wSeparatorOpaque,
    error:      W3WBasicColors(foreground: .w3wErrorElevated, background: .clear)
  )
  
  @available(*, deprecated, message: "Use .w3w instead")
  static public let w3wCells = W3WColors(
    foreground: .w3wLabelsTertiary,
    background: .w3wSystemBackgroundBasePrimary,
    tint:       .w3wLabelsQuaternary,
    secondary:  .w3wLabelsSecondary,
    brand:      .w3wBrandBase,
    highlight:  W3WBasicColors(foreground: .w3wLabelsPrimaryBlackInverse, background: .w3wFillsPrimary),
    border:     .w3wSeparatorOpaque,
    header:     W3WBasicColors(foreground: .w3wSeparatorNonOpaque, background: .w3wSystemBackgroundBaseTertiary)
  )
  
  @available(*, deprecated, message: "Use .w3w instead")
  static public let w3wIcons = W3WColors(
    foreground: .w3wLabelsPrimaryBlackInverse,
    background: .clear,
    tint:       .text,
    secondary:  .text
  )
  
  @available(*, deprecated, message: "Use .w3w instead")
  static public let w3wVoice = W3WColors(
    foreground: .w3wBrandBase,
    background: .clear,
    tint:       .w3wBrandBase,
    secondary:  .w3wLabelsQuaternary
  )
  
  @available(*, deprecated, message: "Use .w3w instead")
  static public let w3wOcr = W3WColors(
    foreground: .w3wLabelsPrimaryBlackInverse,
    background: .w3wSystemBackgroundBasePrimary,
    secondary:  .w3wSystemBackgroundBaseSecondary,
    secondaryBackground: .w3wSystemBackgroundBaseSecondary,
    border:     .clear,
    separator:  .w3wLabelsPrimary,
    success: W3WBasicColors(
      foreground: .w3wLabelsPrimary,
      background: .w3wSuccessElevated),
    error: W3WBasicColors(
      foreground: .w3wLabelsPrimary,
      background: .w3wErrorElevated),
    line: .w3wLabelsPrimary
  )

  @available(*, deprecated, message: "Use .w3w instead")
  static public let w3wButtonFilled = W3WColors(
    foreground: .w3wLabelsPrimary,
    background: .w3wFillsPrimary
  )
  
  @available(*, deprecated, message: "Use .w3w instead")
  static public let w3wButtonTinted = W3WColors(
    foreground: .w3wFillsPrimary,
    background: W3WColor(all: .blue90)
  )
  
  @available(*, deprecated, message: "Use .w3w instead")
  static public let w3wButtonGray = W3WColors(
    foreground: .text,
    background: W3WColor(light: .clear, dark: .black)
  )
  
  @available(*, deprecated, message: "Use .w3w instead")
  static public let w3wButtonPlain = W3WColors(
    foreground: .w3wFillsPrimary,
    background: .clear
  )

  @available(*, deprecated, message: "Use .w3w instead")
  static public let w3wMaps = W3WColors(
    foreground: .w3wLabelsPrimary,
    background: .w3wFillsSecondary,
    tint: .w3wBrandBase,
    secondary: .w3wSeparatorNonOpaque,
    line: .w3wLabelsQuaternary
  )

}
