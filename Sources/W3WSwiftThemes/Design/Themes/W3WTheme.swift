//
//  File.swift
//  
//
//  Created by Dave Duprey on 17/03/2023.
//

import Foundation

public struct W3WTheme: CustomDebugStringConvertible, CustomStringConvertible {
    
  // this holds a dictionary of schemes.  schemes contain colours and styles for a particular type of element such as textFeilds, or buttons, etc
  public var id: String = UUID().uuidString
  public var schemes = [W3WSetTypes : W3WScheme]()

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
  public var fillsQuinary: W3WColor?
  public var fillsSenary: W3WColor?

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

  public var typefaces: W3WTypefaces?

  
  /// Init

  
  /// initialise with a foreground, background, highlight and secondary colour
  public init(base: W3WScheme, buttons: W3WScheme? = nil, textFields: W3WScheme? = nil, labels: W3WScheme? = nil, maps: W3WScheme? = nil, cells: W3WScheme? = nil, icons: W3WScheme? = nil, voice: W3WScheme? = nil, ocr: W3WScheme? = nil) {
    schemes[.base] = base
    add(type: .buttons,    scheme: buttons)
    add(type: .textFields, scheme: textFields)
    add(type: .labels,    scheme: labels)
    add(type: .maps,     scheme: maps)
    add(type: .cells,   scheme: cells)
    add(type: .icons,  scheme: icons)
    add(type: .voice, scheme: voice)
    add(type: .ocr,  scheme: ocr)
  }

  
  public init() {
    schemes[.base] = W3WScheme()
  }
  
  
  public init(theme: W3WTheme?) {
    if let s = theme?.schemes {
      self.schemes = s
    }
    //self.colors = theme?.colors
    //self.styles = theme?.styles
  }
  
  
  /// initialise with a foreground, background, highlight and secondary colour
  public init(brandBase: W3WColor? = nil, labelsPrimary: W3WColor? = nil, labelsSecondary: W3WColor? = nil, 
              labelsTertiary: W3WColor? = nil, labelsQuaternary: W3WColor? = nil, labelsPrimaryInverse: W3WColor? = nil, labelsPrimaryBlackInverse: W3WColor? = nil, 
              fillsPrimary: W3WColor? = nil, fillsSecondary: W3WColor? = nil, fillsTertiary: W3WColor? = nil, fillsQuaternary: W3WColor? = nil, fillsQuinary: W3WColor? = nil, fillsSenary: W3WColor? = nil,
              separatorOpaque: W3WColor? = nil, separatorNonOpaque: W3WColor? = nil,
              systemBackgroundBasePrimary: W3WColor? = nil, systemBackgroundBaseSecondary: W3WColor? = nil, systemBackgroundBaseTertiary: W3WColor? = nil,
              systemBackgroundElevatedPrimary: W3WColor? = nil, systemBackgroundElevatedSecondary: W3WColor? = nil, systemBackgroundElevatedTertiary: W3WColor? = nil,
              groupedBackgroundBasePrimary: W3WColor? = nil, groupedBackgroundBaseSecondary: W3WColor? = nil, groupedBackgroundBaseTertiary: W3WColor? = nil,
              groupedBackgroundElevatedPrimary: W3WColor? = nil, groupedBackgroundElevatedSecondary: W3WColor? = nil, groupedBackgroundElevatedTertiary: W3WColor? = nil,
              successBase: W3WColor? = nil, successElevated: W3WColor? = nil, successLabel: W3WColor? = nil,
              warningBase: W3WColor? = nil, warningElevated: W3WColor? = nil, warningLabel: W3WColor? = nil,
              errorBase: W3WColor? = nil, errorElevated: W3WColor? = nil, errorLabel: W3WColor? = nil,
              typefaces: W3WTypefaces? = W3WTypefaces(),
              base: W3WScheme = .w3w, buttons: W3WScheme? = nil, textFields: W3WScheme? = nil, labels: W3WScheme? = nil,
              maps: W3WScheme? = nil, cells: W3WScheme? = nil, icons: W3WScheme? = nil, voice: W3WScheme? = nil, ocr: W3WScheme? = nil) {
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
    self.fillsQuinary = fillsQuinary
    self.fillsSenary = fillsSenary
    
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
    
    self.typefaces = typefaces

    schemes[.base] = base
    add(type: .buttons,    scheme: buttons)
    add(type: .textFields, scheme: textFields)
    add(type: .labels,    scheme: labels)
    add(type: .maps,     scheme: maps)
    add(type: .cells,   scheme: cells)
    add(type: .icons,  scheme: icons)
    add(type: .voice, scheme: voice)
    add(type: .ocr,  scheme: ocr)
  }

  
  public mutating func reload() {
    typefaces?.reloadFonts()
    id = UUID().uuidString
    for (set, scheme) in schemes {
      if schemes[set]?.styles?.font != nil {
        schemes[set] = scheme.with(font: W3WTypefaces().body)
      }
    }
  }
  


  /// copy a color set from one set to another
  public func copy(from: W3WSetTypes, to: W3WSetTypes) -> W3WTheme {
    var newTheme = W3WTheme(theme: self)
    newTheme.schemes[to] = schemes[from]
    return newTheme
  }

  
  mutating func add(type: W3WSetTypes, scheme: W3WScheme?) {
    if let s = scheme {
      schemes[type] = s
    }
  }
  
  
//  @available(*, deprecated, message: "Call updateView() instead?")
//  public func update(view: W3WViewProtocol) {
//    view.update(theme: self)
//  }
  
  
  // MARK: Accessors
  
  // testing this, see 'schemes' above...
  public subscript(set: W3WSetTypes) -> W3WScheme? {
    get {
      schemes[set]
    }
    set {
      schemes[set] = newValue
    }
  }
  
  
  // MARK: Withs (builders)

  
  public func with(styles: W3WStyles?, into: W3WSetTypes = .base) -> W3WTheme {
    var newTheme = W3WTheme(theme: self)
    let colors =  W3WColors(colors: newTheme[into]?.colors)
    newTheme[into]?.colors = colors
    newTheme[into]?.styles = styles
    
    return newTheme
  }
  
  
  public func with(colors: W3WColors?, into: W3WSetTypes = .base) -> W3WTheme {
    var newTheme = W3WTheme(theme: self)
    let styles = W3WStyles(style: newTheme[into]?.styles)
    newTheme[into]?.colors = colors
    newTheme[into]?.styles = styles
    
    return newTheme
  }
  
  
  public func with(background: W3WColor?, into: W3WSetTypes = .base) -> W3WTheme {
    var newTheme = W3WTheme(theme: self)

    let colors = W3WColors(colors: newTheme[into]?.colors)
    newTheme[into]?.colors = colors
    newTheme[into]?.colors?.background = background
    
    return newTheme
  }
  
  public func with(foreground: W3WColor?, into: W3WSetTypes = .base) -> W3WTheme {
    var newTheme = W3WTheme(theme: self)
    
    let colors = W3WColors(colors: newTheme[into]?.colors)
    newTheme[into]?.colors = colors
    newTheme[into]?.colors?.foreground = foreground
    
    return newTheme
  }
  
  
  public func with(secondary: W3WColor?, into: W3WSetTypes = .base) -> W3WTheme {
    var newTheme = W3WTheme(theme: self)
    let colors = W3WColors(colors: newTheme[into]?.colors)
    newTheme[into]?.colors = colors
    newTheme[into]?.colors?.secondary = secondary
    
    return newTheme
  }
  
  
  public func with(tint: W3WColor?, into: W3WSetTypes = .base) -> W3WTheme {
    var newTheme = W3WTheme(theme: self)
    let colors = W3WColors(colors: newTheme[into]?.colors)
    newTheme[into]?.colors = colors
    newTheme[into]?.colors?.tint = tint
    
    return newTheme
  }

  
  public func with(line: W3WColor?, into: W3WSetTypes = .base) -> W3WTheme {
    var newTheme = W3WTheme(theme: self)
    let colors = W3WColors(colors: newTheme[into]?.colors)
    newTheme[into]?.colors = colors
    newTheme[into]?.colors?.line = line
    
    return newTheme
  }

  
  public func with(border: W3WColor?, into: W3WSetTypes = .base) -> W3WTheme {
    var newTheme = W3WTheme(theme: self)
    
    let colors = W3WColors(colors: newTheme[into]?.colors)
    newTheme[into]?.colors = colors
    newTheme[into]?.colors?.border = border
    
    return newTheme
  }
  
  public func with(separator: W3WColor?, into: W3WSetTypes = .base) -> W3WTheme {
    var newTheme = W3WTheme(theme: self)
    
    let colors = W3WColors(colors: newTheme[into]?.colors)
    newTheme[into]?.colors = colors
    newTheme[into]?.colors?.separator = separator
    
    return newTheme
  }

  
  public func with(padding: W3WPadding?, into: W3WSetTypes = .base) -> W3WTheme {
    var newTheme = W3WTheme(theme: self)
    let colors = W3WColors(colors: newTheme[into]?.colors)
    newTheme[into]?.colors = colors
    return newTheme
  }
  
  
  public func with(cornerRadius: W3WCornerRadius?, into: W3WSetTypes = .base) -> W3WTheme {
    var newTheme = W3WTheme(theme: self)
    let styles = W3WStyles(style: newTheme[into]?.styles).with(cornerRadius: cornerRadius)
    newTheme[into]?.styles = styles
    return newTheme
  }
  
  
  public func with(border: W3WLineThickness?, into: W3WSetTypes = .base) -> W3WTheme {
    var newTheme = W3WTheme(theme: self)
    let styles = W3WStyles(style: newTheme[into]?.styles).with(border: border)
    newTheme[into]?.styles = styles
    return newTheme
  }
  
  
  public func with(rowHeight: W3WRowHeight?, into: W3WSetTypes = .base) -> W3WTheme {
    var newTheme = W3WTheme(theme: self)
    let styles = W3WStyles(style: newTheme[into]?.styles).with(rowHeight: rowHeight )
    newTheme[into]?.styles = styles
    return newTheme
  }
  
  
  public func with(typefaces: W3WTypefaces) -> W3WTheme {
    W3WTheme(
      brandBase: brandBase, labelsPrimary: labelsPrimary, labelsSecondary: labelsSecondary,
      labelsTertiary: labelsTertiary, labelsQuaternary: labelsQuaternary, labelsPrimaryInverse: labelsPrimaryInverse, labelsPrimaryBlackInverse: labelsPrimaryBlackInverse,
      fillsPrimary: fillsPrimary, fillsSecondary: fillsSecondary, fillsTertiary: fillsTertiary, fillsQuaternary: fillsQuaternary, fillsQuinary: fillsQuinary, fillsSenary: fillsSenary,
      separatorOpaque: separatorOpaque, separatorNonOpaque: separatorNonOpaque,
      systemBackgroundBasePrimary: systemBackgroundBasePrimary, systemBackgroundBaseSecondary: systemBackgroundBaseSecondary, systemBackgroundBaseTertiary: systemBackgroundBaseTertiary,
      systemBackgroundElevatedPrimary: systemBackgroundElevatedPrimary, systemBackgroundElevatedSecondary: systemBackgroundElevatedSecondary, systemBackgroundElevatedTertiary: systemBackgroundElevatedTertiary,
      groupedBackgroundBasePrimary: groupedBackgroundBasePrimary, groupedBackgroundBaseSecondary: groupedBackgroundBaseSecondary, groupedBackgroundBaseTertiary: groupedBackgroundBaseTertiary,
      groupedBackgroundElevatedPrimary: groupedBackgroundElevatedPrimary, groupedBackgroundElevatedSecondary: groupedBackgroundElevatedSecondary, groupedBackgroundElevatedTertiary: groupedBackgroundElevatedTertiary,
      successBase: successBase, successElevated: successElevated, successLabel: successLabel,
      warningBase: warningBase, warningElevated: warningElevated, warningLabel: warningLabel,
      errorBase: errorBase, errorElevated: errorElevated, errorLabel: errorLabel,
      typefaces: typefaces,
      base: schemes[.base]!, buttons: schemes[.buttons], textFields: schemes[.textFields], labels: schemes[.labels],
      maps: schemes[.maps], cells: schemes[.cells], icons: schemes[.icons], voice: schemes[.voice], ocr: schemes[.ocr]
    )
  }
  
  
  public func with(body: W3WFont)        -> W3WTheme { return with(typefaces: typefaces?.with(body: body)             ?? W3WTypefaces()) }
  public func with(largeTitle: W3WFont)  -> W3WTheme { return with(typefaces: typefaces?.with(largeTitle: largeTitle) ?? W3WTypefaces()) }
  public func with(title1: W3WFont)      -> W3WTheme { return with(typefaces: typefaces?.with(title1: title1)         ?? W3WTypefaces()) }
  public func with(title2: W3WFont)      -> W3WTheme { return with(typefaces: typefaces?.with(title2: title2)         ?? W3WTypefaces()) }
  public func with(title3: W3WFont)      -> W3WTheme { return with(typefaces: typefaces?.with(title3: title3)         ?? W3WTypefaces()) }
  public func with(headline: W3WFont)    -> W3WTheme { return with(typefaces: typefaces?.with(headline: headline)     ?? W3WTypefaces()) }
  public func with(callout: W3WFont)     -> W3WTheme { return with(typefaces: typefaces?.with(callout: callout)        ?? W3WTypefaces()) }
  public func with(subheadline: W3WFont) -> W3WTheme { return with(typefaces: typefaces?.with(subheadline: subheadline) ?? W3WTypefaces()) }
  public func with(footnote: W3WFont)    -> W3WTheme { return with(typefaces: typefaces?.with(footnote: footnote)      ?? W3WTypefaces()) }
  public func with(caption1: W3WFont)    -> W3WTheme { return with(typefaces: typefaces?.with(caption1: caption1)     ?? W3WTypefaces()) }
  public func with(caption2: W3WFont)    -> W3WTheme { return with(typefaces: typefaces?.with(caption2: caption2)     ?? W3WTypefaces()) }

  
  public var description: String {
    return debugDescription
  }
  
  
  public var debugDescription: String {
    var retvals = [String]()

    for (key, scheme) in schemes {
      retvals.append("\(key): \(scheme.description) ")
    }
    
    return retvals.joined(separator: "\n")
  }
  
}

extension W3WTheme: Equatable {
  public static func == (lhs: W3WTheme, rhs: W3WTheme) -> Bool {
    lhs.id == rhs.id
  }
}
