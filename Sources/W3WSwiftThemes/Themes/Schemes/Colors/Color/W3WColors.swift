//
//  File.swift
//  
//
//  Created by Dave Duprey on 04/05/2022.
//

import Foundation

#if canImport(UIKit)
import UIKit
#endif

#if canImport(AppKit)
import AppKit
#endif


/// holds a foreground, background (in main), highlight and secondary colour, and a positive/negitive meant for okay/cancel buttons etc, sufficient for most interface items' colour needs
public struct W3WColors {
  
  // MARK: Vars
  
  public var brandBase: W3WColor?
  
  public var labelsPrimary: W3WColor?
  public var labelsSecondary: W3WColor?
  public var labelsTertiary: W3WColor?
  public var labelsQuaternary: W3WColor?
  public var labelsPrimaryInverse: W3WColor?
  public var labelsPrimaryBlackInverse: W3WColor?

  public var fillsPrimary: W3WColor?
  public var fillsSecondary: W3WColor?
  public var fillsTertiary: W3WColor?
  public var fillsQuaternary: W3WColor?

  public var separatorOpaque: W3WColor?
  public var separatorNonOpaque: W3WColor?
  
  public var systemBackgroundBasePrimary: W3WColor?
  public var systemBackgroundBaseSecondary: W3WColor?
  public var systemBackgroundBaseTertiary: W3WColor?

  public var systemBackgroundElevatedPrimary: W3WColor?
  public var systemBackgroundElevatedSecondary: W3WColor?
  public var systemBackgroundElevatedTertiary: W3WColor?

  public var groupedBackgroundBasePrimary: W3WColor?
  public var groupedBackgroundBaseSecondary: W3WColor?
  public var groupedBackgroundBaseTertiary: W3WColor?

  public var groupedBackgroundElevatedPrimary: W3WColor?
  public var groupedBackgroundElevatedSecondary: W3WColor?
  public var groupedBackgroundElevatedTertiary: W3WColor?

  public var successBase: W3WColor?
  public var successElevated: W3WColor?
  public var successLabel: W3WColor?

  public var warningBase: W3WColor?
  public var warningElevated: W3WColor?
  public var warningLabel: W3WColor?

  public var errorBase: W3WColor?
  public var errorElevated: W3WColor?
  public var errorLabel: W3WColor?
  
  
  // MARK: Init
  
  
  /// initialise with a foreground, background, highlight and secondary colour
  public init(brandBase: W3WColor? = nil, labelsPrimary: W3WColor? = nil, labelsSecondary: W3WColor? = nil, labelsTertiary: W3WColor? = nil, labelsQuaternary: W3WColor? = nil, labelsPrimaryInverse: W3WColor? = nil, labelsPrimaryBlackInverse: W3WColor? = nil, fillsPrimary: W3WColor? = nil, fillsSecondary: W3WColor? = nil, fillsTertiary: W3WColor? = nil, fillsQuaternary: W3WColor? = nil, separatorOpaque: W3WColor? = nil, separatorNonOpaque: W3WColor? = nil, systemBackgroundBasePrimary: W3WColor? = nil, systemBackgroundBaseSecondary: W3WColor? = nil, systemBackgroundBaseTertiary: W3WColor? = nil, systemBackgroundElevatedPrimary: W3WColor? = nil, systemBackgroundElevatedSecondary: W3WColor? = nil, systemBackgroundElevatedTertiary: W3WColor? = nil, groupedBackgroundBasePrimary: W3WColor? = nil, groupedBackgroundBaseSecondary: W3WColor? = nil, groupedBackgroundBaseTertiary: W3WColor? = nil, groupedBackgroundElevatedPrimary: W3WColor? = nil, groupedBackgroundElevatedSecondary: W3WColor? = nil, groupedBackgroundElevatedTertiary: W3WColor? = nil, successBase: W3WColor? = nil, successElevated: W3WColor? = nil, successLabel: W3WColor? = nil, warningBase: W3WColor? = nil, warningElevated: W3WColor? = nil, warningLabel: W3WColor? = nil, errorBase: W3WColor? = nil, errorElevated: W3WColor? = nil, errorLabel: W3WColor? = nil, foreground: W3WColor? = nil, background: W3WColor? = nil, tint: W3WColor? = nil, secondary: W3WColor? = nil, secondaryBackground: W3WColor? = nil, brand: W3WColor? = nil, highlight: W3WBasicColors? = nil, border: W3WColor? = nil, separator: W3WColor? = nil, shadow: W3WColor? = nil, placeholder: W3WColor? = nil, success: W3WBasicColors? = nil, error: W3WBasicColors? = nil, header: W3WBasicColors? = nil, line: W3WColor? = nil) {
    self.brandBase = brandBase

    self.labelsPrimary = labelsPrimary
    self.labelsSecondary = labelsSecondary
    self.labelsTertiary = labelsTertiary
    self.labelsQuaternary = labelsQuaternary
    self.labelsPrimaryInverse = labelsPrimaryInverse
    self.labelsPrimaryBlackInverse = labelsPrimaryBlackInverse

    self.fillsPrimary = fillsPrimary
    self.fillsSecondary = fillsSecondary
    self.fillsTertiary = fillsTertiary
    self.fillsQuaternary = fillsQuaternary

    self.separatorOpaque = separatorOpaque
    self.separatorNonOpaque = separatorNonOpaque
    
    self.systemBackgroundBasePrimary = systemBackgroundBasePrimary
    self.systemBackgroundBaseSecondary = systemBackgroundBaseSecondary
    self.systemBackgroundBaseTertiary = systemBackgroundBaseTertiary

    self.systemBackgroundElevatedPrimary = systemBackgroundElevatedPrimary
    self.systemBackgroundElevatedSecondary = systemBackgroundElevatedSecondary
    self.systemBackgroundElevatedTertiary = systemBackgroundElevatedTertiary

    self.groupedBackgroundBasePrimary = groupedBackgroundBasePrimary
    self.groupedBackgroundBaseSecondary = groupedBackgroundBaseSecondary
    self.groupedBackgroundBaseTertiary = groupedBackgroundBaseTertiary

    self.groupedBackgroundElevatedPrimary = groupedBackgroundElevatedPrimary
    self.groupedBackgroundElevatedSecondary = groupedBackgroundElevatedSecondary
    self.groupedBackgroundElevatedTertiary = groupedBackgroundElevatedTertiary

    self.successBase = successBase
    self.successElevated = successElevated
    self.successLabel = successLabel

    self.warningBase = warningBase
    self.warningElevated = warningElevated
    self.warningLabel = warningLabel

    self.errorBase = errorBase
    self.errorElevated = errorElevated
    self.errorLabel = errorLabel
    
    self.foreground   = foreground
    self.background  = background
    self.tint       = tint
    self.secondary = secondary
    self.secondaryBackground = secondaryBackground
    self.brand     = brand
    self.highlight = highlight
    self.border    = border
    self.separator = separator
    self.shadow     = shadow
    self.placeholder = placeholder
    self.success     = success
    self.error      = error
    self.header    = header
    self.line     = line

  }
  
  
  /// initialise with nothing
  public init() {
  }
  
  
  /// initialise with a foreground, background, highlight and secondary colour
  public init(colors: W3WBasicColors?) {
    self.foreground = colors?.foreground
    self.background = colors?.background
  }
  
  
  /// initialise with a foreground, background, highlight and secondary colour
  public init(colors: W3WColors?) {
    self.foreground   = colors?.foreground
    self.background  = colors?.background
    self.tint        = colors?.tint
    self.secondary   = colors?.secondary
    self.secondaryBackground = colors?.secondaryBackground
    self.brand       = colors?.brand
    self.highlight   = colors?.highlight
    self.border      = colors?.border
    self.separator   = colors?.separator
    self.shadow      = colors?.shadow
    self.placeholder = colors?.placeholder
    self.success     = colors?.success
    self.error      = colors?.error
    self.header    = colors?.header
    self.line     = colors?.line
  }
  
  
  //  /// initialise with a foreground, background, highlight and secondary colour
  //  public init(base: W3WColorSet, brand: W3WColor, highlight: W3WBaseColors, border: W3WColor, separator: W3WColor, shadow: W3WColor, placeholder: W3WColor, error: W3WBaseColors) {
  //    self.foreground = foreground
  //    self.background = background
  //    self.brand = brand
  //    self.highlight = highlight
  //    self.border = border
  //    self.separator = separator
  //    self.shadow = shadow
  //    self.placeholder = placeholder
  //    self.error = error
  //
  //    super.init(foreground: base.foreground, background: base.background)
  //  }
  
  
  //#if os(macOS)
  //  /// initialise with NSColor for foreground, background, highlight and secondary colour
  //  public init(foreground: NSColor? = nil, background: NSColor? = nil, tint: NSColor? = nil, secondary: NSColor? = nil, nsBrand: NSColor? = nil, highlight: W3WBaseColors? = nil, nsSecondary: NSColor? = nil, nsShadow: NSColor? = nil, nsBorder: NSColor? = nil, nsSeparator: NSColor? = nil, nsPlaceholder: NSColor? = nil, nsError: W3WBaseColors? = nil, header: W3WBasicColors? = nil, line: NSColor? = nil) {
  //    self.foreground   = foreground
  //    self.background  = background
  //    self.tint       = tint
  //    self.secondary = secondary
  //    self.brand     = brand
  //    self.highlight = highlight
  //    self.border    = border
  //    self.separator = separator
  //    self.shadow     = shadow
  //    self.placeholder = placeholder
  //    self.error        = error
  //    self.header        = header
  //    self.line           = line
  //  }
  //
  //
  //  /// initialise with NSColor for foreground, background, highlight and secondary colour
  //  @available(*, deprecated, message: "main is deprecated, replace with: foreground, background, tint, secondary directly instead")
  //  public init(nsForeground: NSColor, nsBackground: NSColor, nsTint: NSColor, nsBrand: NSColor, highlight: W3WBaseColors, nsSecondary: NSColor, nsShadow: NSColor, nsBorder: NSColor, nsSeparator: NSColor, nsPlaceholder: NSColor, error: W3WBaseColors, header: W3WBasicColors? = nil) {
  //    self.foreground   = nsForeground
  //    self.background  = nsBackground
  //    self.tint       = nsTint
  //    self.secondary = nsSecondary
  //    self.brand     = nsBrand
  //    self.highlight = highlight
  //    self.border    = nsBorder
  //    self.separator = nsSeparator
  //    self.shadow     = nsShadow
  //    self.placeholder = nsPlaceholder
  //    self.error        = nsError
  //    self.header        = header
  //  }
  //#endif
  
  
#if canImport(UIKit)
  
  /// initialise with a foreground, background, highlight and secondary colour
  public init(uiForeground: UIColor? = nil, uiBackground: UIColor? = nil, uiTint: UIColor? = nil, uiSecondary: UIColor? = nil, uiSecondaryBackground: UIColor? = nil, uiBrand: UIColor? = nil, highlight: W3WBasicColors? = nil, uiBorder: UIColor? = nil, uiSeparator: UIColor? = nil, uiShadow: UIColor? = nil, uiPlaceholder: UIColor? = nil, success: W3WBasicColors? = nil, error: W3WBasicColors? = nil, header: W3WBasicColors? = nil, uiLine: UIColor? = nil) {
    self.foreground   = (uiForeground != nil)   ? W3WColor(uiColor: uiForeground!)  : nil
    self.background   = (uiBackground != nil)   ? W3WColor(uiColor: uiBackground!)  : nil
    self.tint         = (uiTint != nil)         ? W3WColor(uiColor: uiTint!)        : nil
    self.secondary    = (uiSecondary != nil)    ? W3WColor(uiColor: uiSecondary!)   : nil
    self.secondaryBackground    = (uiSecondaryBackground != nil)    ? W3WColor(uiColor: uiSecondaryBackground!)   : nil
    self.brand        = (uiBrand != nil)        ? W3WColor(uiColor: uiBrand!)       : nil
    self.highlight    = highlight
    self.border       = (uiBorder != nil)       ? W3WColor(uiColor: uiBorder!)      : nil
    self.separator    = (uiSeparator != nil)    ? W3WColor(uiColor: uiSeparator!)   : nil
    self.shadow       = (uiShadow != nil)       ? W3WColor(uiColor: uiShadow!)      : nil
    self.placeholder  = (uiPlaceholder != nil)  ? W3WColor(uiColor: uiPlaceholder!) : nil
    self.success      = success
    self.error        = error
    self.header       = header
    self.line         = (uiLine != nil)         ? W3WColor(uiColor: uiLine!) : nil
  }
  
  
  //  /// initialise with UIColor for foreground, background, highlight and secondary colour
  //  public init(foreground: UIColor? = nil, background: UIColor? = nil, tint: UIColor? = nil, secondary: UIColor? = nil, uiBrand: UIColor? = nil, highlight: W3WBaseColors? = nil, uiSecondary: UIColor? = nil, uiShadow: UIColor? = nil, uiBorder: UIColor? = nil, uiSeparator: UIColor? = nil, uiPlaceholder: UIColor? = nil, error: W3WBaseColors? = nil) {
  //    self.brand        = (uiBrand != nil) ? W3WColor(uiColor: uiBrand!) : nil
  //    self.highlight    = highlight
  //    self.border       = (uiBorder != nil) ? W3WColor(uiColor: uiBorder!) : nil
  //    self.separator    = (uiSeparator != nil) ? W3WColor(uiColor: uiSeparator!) : nil
  //    self.shadow       = (uiShadow != nil) ? W3WColor(uiColor: uiShadow!) : nil
  //    self.placeholder  = (uiPlaceholder != nil) ? W3WColor(uiColor: uiPlaceholder!) : nil
  //    self.error        = error
  //
  //    //super.init(uiForeground: foreground, uiBackground: background)
  //  }
  //
  //
  //  /// initialise with UIColor for foreground, background, highlight and secondary colour
  //  public init(main: W3WColorSet, uiBrand: UIColor, highlight: W3WBaseColors, uiSecondary: UIColor, uiShadow: UIColor, uiBorder: UIColor, uiSeparator: UIColor, uiPlaceholder: UIColor, error: W3WBaseColors) {
  //    self.brand        = W3WColor(uiColor: uiBrand)
  //    self.highlight    = highlight
  //    self.border       = W3WColor(uiColor: uiBorder)
  //    self.separator    = W3WColor(uiColor: uiSeparator)
  //    self.shadow       = W3WColor(uiColor: uiShadow)
  //    self.placeholder  = W3WColor(uiColor: uiPlaceholder)
  //    self.error        = error
  //
  //    super.init(foreground: main.foreground, background: main.background)
  //  }
#endif
  
  
  // MARK: Accessors
  
  
  /// get a color using a subsctipt: eg: darkSet[.background]
  public subscript(index: W3WColorSetNames) -> W3WColor {
    switch index {
    case .foreground:
      return foreground ?? .foreground
    case .secondary:
      return secondary ?? .secondary
    case .background:
      return background ?? .background
    case .tint:
      return tint ?? .tint
    }
  }
  
  
  /// return the same colorset the foreground color changed
  public func with(foreground: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the background color changed
  public func with(background: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the secondary color changed
  public func with(tint: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the secondary color changed
  public func with(secondary: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the secondary background color changed
  public func with(secondaryBackground: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the secondary color changed
  public func with(brand: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the highlight color changed
  public func with(highlight: W3WBasicColors? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the positive color changed
  public func with(border: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the positive color changed
  public func with(separator: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the secondary color changed
  public func with(shadow: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the positive color changed
  public func with(placeholder: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the positive color changed
  public func with(success: W3WBasicColors? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the positive color changed
  public func with(error: W3WBasicColors? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the positive color changed
  public func with(header: W3WBasicColors? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the positive color changed
  public func with(line: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  @available(*, deprecated, renamed: "tint")
  public func findTint() -> W3WColor? {
    return tint ?? foreground
  }
  
  
  // MARK:  depricated
  
  @available(*, deprecated)
  public var foreground: W3WColor?
  @available(*, deprecated)
  public var background: W3WColor?
  @available(*, deprecated)
  public var tint: W3WColor?
  @available(*, deprecated)
  public var secondary: W3WColor?
  @available(*, deprecated)
  public var secondaryBackground: W3WColor?
  @available(*, deprecated)
  public var brand: W3WColor?
  @available(*, deprecated)
  public var highlight: W3WBasicColors?
  @available(*, deprecated)
  public var border: W3WColor?
  @available(*, deprecated)
  public var separator: W3WColor?
  @available(*, deprecated)
  public var shadow: W3WColor?
  @available(*, deprecated)
  public var placeholder: W3WColor?
  @available(*, deprecated)
  public var success: W3WBasicColors?
  @available(*, deprecated)
  public var error: W3WBasicColors?
  @available(*, deprecated)
  public var header: W3WBasicColors?
  @available(*, deprecated)
  public var line: W3WColor?

  
}

  
