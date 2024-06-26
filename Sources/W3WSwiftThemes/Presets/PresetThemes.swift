//
//  File.swift
//  
//
//  Created by Dave Duprey on 17/03/2023.
//

import UIKit


extension W3WTheme {
  
  // empty theme to disallow colouring and all iOS defaults to happen
  public static let defaults   = W3WTheme()

  
  // MARK: Standard Theme

  public static let standard = W3WTheme(
    brandBase: .standardBrandBase,
    labelsPrimary: .standardLabelsPrimary,
    labelsSecondary: .standardLabelsSecondary,
    labelsTertiary: .standardLabelsTertiary,
    labelsQuaternary: .standardLabelsQuaternary,
    labelsPrimaryInverse: .standardLabelsPrimaryInverse,
    labelsPrimaryBlackInverse: .standardLabelsPrimaryBlackInverse,
    fillsPrimary: .standardFillsPrimary,
    fillsSecondary: .standardFillsSecondary,
    fillsTertiary: .standardFillsTertiary,
    fillsQuaternary: .standardFillsQuaternary,
    separatorOpaque: .standardSeparatorOpaque,
    separatorNonOpaque: .standardSeparatorNonOpaque,
    systemBackgroundBasePrimary: .standardSystemBackgroundBasePrimary,
    systemBackgroundBaseSecondary: .standardSystemBackgroundBaseSecondary,
    systemBackgroundBaseTertiary: .standardSystemBackgroundBaseTertiary,
    systemBackgroundElevatedPrimary: .standardSystemBackgroundElevatedPrimary,
    systemBackgroundElevatedSecondary: .standardSystemBackgroundElevatedSecondary,
    systemBackgroundElevatedTertiary: .standardSystemBackgroundElevatedTertiary,
    groupedBackgroundBasePrimary: .standardGroupedBackgroundBasePrimary,
    groupedBackgroundBaseSecondary: .standardGroupedBackgroundBaseSecondary,
    groupedBackgroundBaseTertiary: .standardGroupedBackgroundBaseTertiary,
    groupedBackgroundElevatedPrimary: .standardGroupedBackgroundElevatedPrimary,
    groupedBackgroundElevatedSecondary: .standardGroupedBackgroundElevatedSecondary,
    groupedBackgroundElevatedTertiary: .standardGroupedBackgroundElevatedTertiary,
    successBase: .standardSuccessBase,
    successElevated: .standardSuccessElevated,
    successLabel: .standardSuccessLabel,
    warningBase: .standardWarningBase,
    warningElevated: .standardWarningElevated,
    warningLabel: .standardWarningLabel,
    errorBase: .standardErrorBase,
    errorElevated: .standardErrorElevated,
    errorLabel: .standardErrorLabel,

    base:      .standard,
    buttons:    .standardButtons,
    textFields: .standardTextFields,
    labels:     .standardLabels,
    maps:      .standardMaps,
    cells:    .standardCells,
    icons:   .standardIcons,
    voice:  .standardVoice,
    ocr:   .standardOcr
  )

  
  // MARK: what3words Theme

  public static let what3words = W3WTheme(
    brandBase: .w3wBrandBase,
    labelsPrimary: .w3wLabelsPrimary,
    labelsSecondary: .w3wLabelsSecondary,
    labelsTertiary: .w3wLabelsTertiary,
    labelsQuaternary: .w3wLabelsQuaternary,
    labelsPrimaryInverse: .w3wLabelsPrimaryInverse,
    labelsPrimaryBlackInverse: .w3wLabelsPrimaryBlackInverse,
    fillsPrimary: .w3wFillsPrimary,
    fillsSecondary: .w3wFillsSecondary,
    fillsTertiary: .w3wFillsTertiary,
    fillsQuaternary: .w3wFillsQuaternary,
    separatorOpaque: .w3wSeparatorOpaque,
    separatorNonOpaque: .w3wSeparatorNonOpaque,
    systemBackgroundBasePrimary: .w3wSystemBackgroundBasePrimary,
    systemBackgroundBaseSecondary: .w3wSystemBackgroundBaseSecondary,
    systemBackgroundBaseTertiary: .w3wSystemBackgroundBaseTertiary,
    systemBackgroundElevatedPrimary: .w3wSystemBackgroundElevatedPrimary,
    systemBackgroundElevatedSecondary: .w3wSystemBackgroundElevatedSecondary,
    systemBackgroundElevatedTertiary: .w3wSystemBackgroundElevatedTertiary,
    groupedBackgroundBasePrimary: .w3wGroupedBackgroundBasePrimary,
    groupedBackgroundBaseSecondary: .w3wGroupedBackgroundBaseSecondary,
    groupedBackgroundBaseTertiary: .w3wGroupedBackgroundBaseTertiary,
    groupedBackgroundElevatedPrimary: .w3wGroupedBackgroundElevatedPrimary,
    groupedBackgroundElevatedSecondary: .w3wGroupedBackgroundElevatedSecondary,
    groupedBackgroundElevatedTertiary: .w3wGroupedBackgroundElevatedTertiary,
    successBase: .w3wSuccessBase,
    successElevated: .w3wSuccessElevated,
    successLabel: .w3wSuccessLabel,
    warningBase: .w3wWarningBase,
    warningElevated: .w3wWarningElevated,
    warningLabel: .w3wWarningLabel,
    errorBase: .w3wErrorBase,
    errorElevated: .w3wErrorElevated,
    errorLabel: .w3wErrorLabel,

    base:      .w3w,
    buttons:    .w3wButtons,
    textFields: .w3wTextFields,
    labels:     .w3wLabels,
    maps:      .standardMaps,
    cells:    .w3wCells,
    icons:   .w3wIcons,
    voice:  .w3wVoice,
    ocr:   .w3wOcr
  )

  
  // MARK: Deprecated Themes

  // design for a what3words branded tableviewcell
  @available(*, deprecated)
  public static let w3wCell = W3WTheme(base: W3WScheme(colors: W3WColors(foreground: .text, background: .background, tint: .slash, secondary: .secondaryLabel)))

  @available(*, deprecated)
  public static let w3wCellIconFilled = W3WTheme(base: W3WScheme(
    colors:W3WColors(colors: W3WBasicColors.cellIconFilled),
    styles: W3WStyles(cornerRadius: .soft)
  ))
  
}
