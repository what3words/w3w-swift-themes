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
  
  
  // autosuggest
  public let foreground: W3WColor?
  public let background: W3WColor?
  public let tint:       W3WColor?
  public let secondary:  W3WColor?
  
  @available(*, deprecated, message: "Use a member that matches the Figma colour")
  public var secondaryBackground: W3WColor? = nil
  @available(*, deprecated, message: "Use a member that matches the Figma colour")
  public var brand: W3WColor? = nil
  @available(*, deprecated, message: "Use a member that matches the Figma colour")
  public var highlight: W3WBasicColors? = nil
  @available(*, deprecated, message: "Use a member that matches the Figma colour")
  public var border: W3WColor? = nil
  @available(*, deprecated, message: "Use a member that matches the Figma colour")
  public var separator: W3WColor? = nil
  @available(*, deprecated, message: "Use a member that matches the Figma colour")
  public var shadow: W3WColor? = nil
  @available(*, deprecated, message: "Use a member that matches the Figma colour")
  public var placeholder: W3WColor? = nil
  @available(*, deprecated, message: "Use a member that matches the Figma colour")
  public var success: W3WBasicColors? = nil
  @available(*, deprecated, message: "Use a member that matches the Figma colour")
  public var error: W3WBasicColors? = nil
  @available(*, deprecated, message: "Use a member that matches the Figma colour")
  public var header: W3WBasicColors? = nil
  @available(*, deprecated, message: "Use a member that matches the Figma colour")
  public var line: W3WColor? = nil
  
  public let brandBase:    W3WColor?
  public let labelsPrimary:   W3WColor?
  public let labelsSecondary:   W3WColor?
  public let labelsTertiary:      W3WColor?
  public let labelsQuaternary:      W3WColor?
  public let labelsPrimaryInverse:    W3WColor?
  public let labelsPrimaryBlackInverse: W3WColor?
  public let fillsPrimary:               W3WColor?
  public let fillsSecondary:             W3WColor?
  public let fillsTertiary:             W3WColor?
  public let fillsQuaternary:          W3WColor?
  public let separatorOpaque:          W3WColor?
  public let separatorNonOpaque:        W3WColor?
  public let systemBackgroundBasePrimary:  W3WColor?
  public let systemBackgroundBaseSecondary: W3WColor?
  public let systemBackgroundBaseTertiary:   W3WColor?
  public let systemBackgroundElevatedPrimary:  W3WColor?
  public let systemBackgroundElevatedSecondary: W3WColor?
  public let systemBackgroundElevatedTertiary:   W3WColor?
  public let groupedBackgroundBasePrimary:        W3WColor?
  public let groupedBackgroundBaseSecondary:      W3WColor?
  public let groupedBackgroundBaseTertiary:       W3WColor?
  public let groupedBackgroundElevatedPrimary:    W3WColor?
  public let groupedBackgroundElevatedSecondary:  W3WColor?
  public let groupedBackgroundElevatedTertiary:  W3WColor?
  public let successBase:                      W3WColor?
  public let successElevated:                W3WColor?
  public let successLabel:                 W3WColor?
  public let warningBase:               W3WColor?
  public let warningElevated:         W3WColor?
  public let warningLabel:          W3WColor?
  public let errorBase:          W3WColor?
  public let errorElevated:    W3WColor?
  public let errorLabel:     W3WColor?

  
  // MARK: Init
  
  
  /// initialise with a foreground, background, highlight and secondary colour
  public init(brandBase:    W3WColor? = nil,
              labelsPrimary:   W3WColor? = nil,
              labelsSecondary:   W3WColor? = nil,
              labelsTertiary:      W3WColor? = nil,
              labelsQuaternary:      W3WColor? = nil,
              labelsPrimaryInverse:    W3WColor? = nil,
              labelsPrimaryBlackInverse: W3WColor? = nil,
              fillsPrimary:               W3WColor? = nil,
              fillsSecondary:             W3WColor? = nil,
              fillsTertiary:             W3WColor? = nil,
              fillsQuaternary:          W3WColor? = nil,
              separatorOpaque:          W3WColor? = nil,
              separatorNonOpaque:        W3WColor? = nil,
              systemBackgroundBasePrimary:  W3WColor? = nil,
              systemBackgroundBaseSecondary: W3WColor? = nil,
              systemBackgroundBaseTertiary:   W3WColor? = nil,
              systemBackgroundElevatedPrimary:  W3WColor? = nil,
              systemBackgroundElevatedSecondary: W3WColor? = nil,
              systemBackgroundElevatedTertiary:   W3WColor? = nil,
              groupedBackgroundBasePrimary:        W3WColor? = nil,
              groupedBackgroundBaseSecondary:      W3WColor? = nil,
              groupedBackgroundBaseTertiary:       W3WColor? = nil,
              groupedBackgroundElevatedPrimary:    W3WColor? = nil,
              groupedBackgroundElevatedSecondary:  W3WColor? = nil,
              groupedBackgroundElevatedTertiary:  W3WColor? = nil,
              successBase:                      W3WColor? = nil,
              successElevated:                W3WColor? = nil,
              successLabel:                 W3WColor? = nil,
              warningBase:               W3WColor? = nil,
              warningElevated:         W3WColor? = nil,
              warningLabel:          W3WColor? = nil,
              errorBase:          W3WColor? = nil,
              errorElevated:    W3WColor? = nil,
              errorLabel:     W3WColor? = nil) {
    self.brandBase     = brandBase
    self.labelsPrimary   = labelsPrimary
    self.labelsSecondary   = labelsSecondary
    self.labelsTertiary      = labelsTertiary
    self.labelsQuaternary      = labelsQuaternary
    self.labelsPrimaryInverse    = labelsPrimaryInverse
    self.labelsPrimaryBlackInverse = labelsPrimaryBlackInverse
    self.fillsPrimary               = fillsPrimary
    self.fillsSecondary             = fillsSecondary
    self.fillsTertiary             = fillsTertiary
    self.fillsQuaternary          = fillsQuaternary
    self.separatorOpaque          = separatorOpaque
    self.separatorNonOpaque        = separatorNonOpaque
    self.systemBackgroundBasePrimary = systemBackgroundBasePrimary
    self.systemBackgroundBaseSecondary = systemBackgroundBaseSecondary
    self.systemBackgroundBaseTertiary    = systemBackgroundBaseTertiary
    self.systemBackgroundElevatedPrimary  = systemBackgroundElevatedPrimary
    self.systemBackgroundElevatedSecondary = systemBackgroundElevatedSecondary
    self.systemBackgroundElevatedTertiary  = systemBackgroundBaseTertiary
    self.groupedBackgroundBasePrimary     = groupedBackgroundBasePrimary
    self.groupedBackgroundBaseSecondary   = groupedBackgroundBaseSecondary
    self.groupedBackgroundBaseTertiary    = groupedBackgroundBaseTertiary
    self.groupedBackgroundElevatedPrimary  = groupedBackgroundElevatedPrimary
    self.groupedBackgroundElevatedSecondary = groupedBackgroundElevatedSecondary
    self.groupedBackgroundElevatedTertiary  = groupedBackgroundElevatedTertiary
    self.successBase                       = successBase
    self.successElevated                  = successElevated
    self.successLabel                   = successLabel
    self.warningBase                  = warningBase
    self.warningElevated            = warningElevated
    self.warningLabel             = warningLabel
    self.errorBase              = errorBase
    self.errorElevated        = errorElevated
    self.errorLabel         = errorLabel
    
    self.foreground = labelsPrimaryBlackInverse
    self.background = systemBackgroundBasePrimary
    self.tint       = brandBase
    self.secondary  = labelsQuaternary
  }

  
  
  /// initialise with a foreground, background, highlight and secondary colour
  @available(*, deprecated, message: "Use a newer constructor")
  public init(foreground: W3WColor? = nil, background: W3WColor? = nil, tint: W3WColor? = nil, secondary: W3WColor? = nil, secondaryBackground: W3WColor? = nil, brand: W3WColor? = nil, highlight: W3WBasicColors? = nil, border: W3WColor? = nil, separator: W3WColor? = nil, shadow: W3WColor? = nil, placeholder: W3WColor? = nil, success: W3WBasicColors? = nil, error: W3WBasicColors? = nil, header: W3WBasicColors? = nil, line: W3WColor? = nil) {
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
    self.line       = line
    
    self.brandBase     = nil
    self.labelsPrimary   = nil
    self.labelsSecondary   = nil
    self.labelsTertiary      = nil
    self.labelsQuaternary      = nil
    self.labelsPrimaryInverse    = nil
    self.labelsPrimaryBlackInverse = nil
    self.fillsPrimary               = nil
    self.fillsSecondary             = nil
    self.fillsTertiary             = nil
    self.fillsQuaternary          = nil
    self.separatorOpaque          = nil
    self.separatorNonOpaque        = nil
    self.systemBackgroundBasePrimary = nil
    self.systemBackgroundBaseSecondary = nil
    self.systemBackgroundBaseTertiary    = nil
    self.systemBackgroundElevatedPrimary  = nil
    self.systemBackgroundElevatedSecondary = nil
    self.systemBackgroundElevatedTertiary  = nil
    self.groupedBackgroundBasePrimary     = nil
    self.groupedBackgroundBaseSecondary   = nil
    self.groupedBackgroundBaseTertiary    = nil
    self.groupedBackgroundElevatedPrimary  = nil
    self.groupedBackgroundElevatedSecondary = nil
    self.groupedBackgroundElevatedTertiary  = nil
    self.successBase                       = nil
    self.successElevated                  = nil
    self.successLabel                   = nil
    self.warningBase                  = nil
    self.warningElevated            = nil
    self.warningLabel             = nil
    self.errorBase              = nil
    self.errorElevated        = nil
    self.errorLabel         = nil
  }
  
    
  /// initialise with a foreground, background, highlight and secondary colour
  @available(*, deprecated, message: "Use a newer constructor")
  public init(colors: W3WBasicColors?) {
    self.init(foreground: colors?.foreground, background: colors?.background)
  }
  
  
  /// initialise with a foreground, background, highlight and secondary colour
  public init(colors: W3WColors?) {
    self.init(brandBase:    colors?.brandBase,
              labelsPrimary:   colors?.labelsPrimary,
              labelsSecondary:   colors?.labelsSecondary,
              labelsTertiary:      colors?.labelsTertiary,
              labelsQuaternary:      colors?.labelsQuaternary,
              labelsPrimaryInverse:    colors?.labelsPrimaryInverse,
              labelsPrimaryBlackInverse: colors?.labelsPrimaryBlackInverse,
              fillsPrimary:               colors?.fillsPrimary,
              fillsSecondary:             colors?.fillsSecondary,
              fillsTertiary:             colors?.fillsTertiary,
              fillsQuaternary:          colors?.fillsQuaternary,
              separatorOpaque:          colors?.separatorOpaque,
              separatorNonOpaque:        colors?.separatorNonOpaque,
              systemBackgroundBasePrimary:  colors?.systemBackgroundBasePrimary,
              systemBackgroundBaseSecondary: colors?.systemBackgroundBaseSecondary,
              systemBackgroundBaseTertiary:   colors?.systemBackgroundBaseTertiary,
              systemBackgroundElevatedPrimary:  colors?.systemBackgroundElevatedPrimary,
              systemBackgroundElevatedSecondary: colors?.systemBackgroundElevatedSecondary,
              systemBackgroundElevatedTertiary:   colors?.systemBackgroundElevatedTertiary,
              groupedBackgroundBasePrimary:        colors?.groupedBackgroundBasePrimary,
              groupedBackgroundBaseSecondary:      colors?.groupedBackgroundBaseSecondary,
              groupedBackgroundBaseTertiary:       colors?.groupedBackgroundBaseTertiary,
              groupedBackgroundElevatedPrimary:    colors?.groupedBackgroundElevatedPrimary,
              groupedBackgroundElevatedSecondary:  colors?.groupedBackgroundElevatedSecondary,
              groupedBackgroundElevatedTertiary:  colors?.groupedBackgroundElevatedTertiary,
              successBase:                      colors?.successBase,
              successElevated:                colors?.successElevated,
              successLabel:                 colors?.successLabel,
              warningBase:               colors?.warningBase,
              warningElevated:         colors?.warningElevated,
              warningLabel:          colors?.warningLabel,
              errorBase:          colors?.errorBase,
              errorElevated:    colors?.errorElevated,
              errorLabel:     colors?.errorLabel)
  }
  
  
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
  @available(*, deprecated, message: "Use a newer constructor")
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

    self.brandBase     = nil
    self.labelsPrimary   = nil
    self.labelsSecondary   = nil
    self.labelsTertiary      = nil
    self.labelsQuaternary      = nil
    self.labelsPrimaryInverse    = nil
    self.labelsPrimaryBlackInverse = nil
    self.fillsPrimary               = nil
    self.fillsSecondary             = nil
    self.fillsTertiary             = nil
    self.fillsQuaternary          = nil
    self.separatorOpaque          = nil
    self.separatorNonOpaque        = nil
    self.systemBackgroundBasePrimary = nil
    self.systemBackgroundBaseSecondary = nil
    self.systemBackgroundBaseTertiary    = nil
    self.systemBackgroundElevatedPrimary  = nil
    self.systemBackgroundElevatedSecondary = nil
    self.systemBackgroundElevatedTertiary  = nil
    self.groupedBackgroundBasePrimary     = nil
    self.groupedBackgroundBaseSecondary   = nil
    self.groupedBackgroundBaseTertiary    = nil
    self.groupedBackgroundElevatedPrimary  = nil
    self.groupedBackgroundElevatedSecondary = nil
    self.groupedBackgroundElevatedTertiary  = nil
    self.successBase                       = nil
    self.successElevated                  = nil
    self.successLabel                   = nil
    self.warningBase                  = nil
    self.warningElevated            = nil
    self.warningLabel             = nil
    self.errorBase              = nil
    self.errorElevated        = nil
    self.errorLabel         = nil
  }
  

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
  @available(*, deprecated, message: "This value is depricated")
  public func with(foreground: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the background color changed
  @available(*, deprecated, message: "This value is depricated")
  public func with(background: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the secondary color changed
  @available(*, deprecated, message: "This value is depricated")
  public func with(tint: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the secondary color changed
  @available(*, deprecated, message: "This value is depricated")
  public func with(secondary: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the secondary color changed
  @available(*, deprecated, message: "This value is depricated")
  public func with(brand: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the highlight color changed
  @available(*, deprecated, message: "This value is depricated")
  public func with(highlight: W3WBasicColors? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the positive color changed
  @available(*, deprecated, message: "This value is depricated")
  public func with(border: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the positive color changed
  @available(*, deprecated, message: "This value is depricated")
  public func with(separator: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the secondary color changed
  @available(*, deprecated, message: "This value is depricated")
  public func with(shadow: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the positive color changed
  @available(*, deprecated, message: "This value is depricated")
  public func with(placeholder: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the positive color changed
  @available(*, deprecated, message: "This value is depricated")
  public func with(success: W3WBasicColors? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the positive color changed
  @available(*, deprecated, message: "This value is depricated")
  public func with(error: W3WBasicColors? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the positive color changed
  @available(*, deprecated, message: "This value is depricated")
  public func with(header: W3WBasicColors? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  /// return the same colorset the positive color changed
  @available(*, deprecated, message: "This value is depricated")
  public func with(line: W3WColor? = nil) -> W3WColors {
    return W3WColors(foreground: foreground, background: background, tint: tint, secondary: secondary, secondaryBackground: secondaryBackground, brand: brand, highlight: highlight, border: border, separator: separator, shadow: shadow, placeholder: placeholder, success: success, error: error, header: header, line: line)
  }
  
  
  @available(*, deprecated, renamed: "tint")
  public func findTint() -> W3WColor? {
    return tint ?? foreground
  }
  
}

  
