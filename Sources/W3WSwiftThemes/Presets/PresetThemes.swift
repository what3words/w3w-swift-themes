//
//  File.swift
//  
//
//  Created by Dave Duprey on 17/03/2023.
//

//import UIKit


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
    fillsQuinary: .standardFillsQuinary,
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
    
    typefaces: W3WTypefaces(),

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
    fillsQuinary: .w3wFillsQuinary,
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

    typefaces: W3WTypefaces(),

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

  
  public func buttonScheme(grade: W3WOrdinal, shape: W3WButtonShape) -> W3WScheme {
    var colors = W3WColors()
    var styles = W3WStyles()
    
    switch grade {
      case .primary: colors    = .buttonPrimary(theme: self)
      case .secondary: colors  = .buttonSecondary(theme: self)
      case .tertiary: colors   = .buttonTertiary(theme: self)
      case .quaternary: colors = .buttonQuaternary(theme: self)
      case .quinary: colors    = .buttonQuinary(theme: self)
      case .senary: colors     = .buttonSenary(theme: self)
      case .septenary: colors  = .buttonSeptenary(theme: self)
    }
    
    switch shape {
      case .large: styles    = .buttonLarge(theme: self)
      case .medium: styles   = .buttonMedium(theme: self)
      case .small: styles    = .buttonSmall(theme: self)
      case .circular: styles = .buttonCircular(theme: self)
      case .oval: styles     = .buttonCircular(theme: self)
    }
    
    return W3WScheme(colors: colors, styles: styles)
  }
  
  public func labelScheme(grade: W3WOrdinal, fontStyle: W3WFontStyle, weight: W3WFontWeight) -> W3WScheme {
    var colors = W3WColors()
    var styles = W3WStyles(font: self.typefaces?[fontStyle].with(weight: .heavy))
    
    switch grade {
      case .primary: colors    = W3WColors(foreground: self.labelsPrimary)
      case .secondary: colors  = W3WColors(foreground: self.labelsSecondary)
      case .tertiary: colors   = W3WColors(foreground: self.labelsTertiary)
      default: colors          = W3WColors(foreground: self.labelsQuaternary)
    }
    
    return W3WScheme(colors: colors, styles: styles)
  }
  
  
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
