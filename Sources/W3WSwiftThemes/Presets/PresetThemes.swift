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
