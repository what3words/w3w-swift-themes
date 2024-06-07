//
//  File.swift
//  
//
//  Created by Dave Duprey on 21/03/2023.
//

import UIKit


extension W3WStyles {
  
  public static let w3w = W3WStyles.standard
  
  public static let standard = W3WStyles(
    borders: W3WBorders(),
    corners:   W3WCorners(),
    shadows:     W3WShadows(),
    fonts:         W3WFonts(),
    textAlignments: W3WTextAlignments(),
    paddings:        W3WPaddings(),
    separators:      W3WSeparators(),
    rowHeights:      W3WRowHeights(),
    lineThicknesses: W3WLineThicknesses(),
    visualEffects:  W3WVisualEffects()
  )
  
//  public static let standard = W3WStyles(
//    borderNone:  W3WLineThickness.none,
//    borderOne:   .onePoint,
//    borderTwo:   .twoPoint,
//    borderThree: .threePoint,
//    borderFour:  .fourPoint,
//    cornerRadiusNone:       W3WCornerRadius.none,
//    cornerRadiusExtraSmall: .extraSmall,
//    cornerRadiusSmall:      .small,
//    cornerRadiusLarge:      .large,
//    cornerRadiusExtraLarge: .extraLarge,
//    shadowNone:   W3WShadow.none,
//    shadowLow:    .low,
//    shadowMedium: .medium,
//    shadowHigh:   .high,
//    fonts:         W3WFonts(),
//    paddingNone:    W3WPadding.none,
//    paddingSingle:  .single,
//    paddingFine:    .fine,
//    paddingThin:    .thin,
//    paddingLight:   .light,
//    paddingMedium:  .medium,
//    paddingBold:    .bold,
//    paddingHeavy:   .heavy,
//    separatorNone:  W3WLineThickness.none,
//    separatorOne:   .onePoint,
//    separatorTwo:   .twoPoint,
//    separatorThree: .threePoint,
//    separatorFour:  .fourPoint,
//    rowHeightExtraSmall: .extraSmall,
//    rowHeightSmall:       .small,
//    rowHeightMedium:       .medium,
//    rowHeightLarge:         .large,
//    rowHeightExtraLarge:     .extraLarge,
//    rowHeightExtraExtraLarge: .extraExtraLarge,
//    lineThicknessNone:  W3WLineThickness.none,
//    lineThicknessOne:   .onePoint,
//    lineThicknessTwo:   .twoPoint,
//    lineThicknessThree: .threePoint,
//    lineThicknessFour:  .fourPoint,
//    visualEffect: nil,
//    
//    border: nil,
//    cornerRadius: nil,
//    shadow: nil,
//    textAlignment: nil,
//    padding: nil,
//    separator: nil,
//    rowHeight: nil,
//    lineThickness: nil
//  )
  
  
  public static let standardOld          =  W3WStyles(fonts: W3WFonts(), padding: W3WPadding.medium)
  public static let standardButtons    =  W3WStyles(cornerRadius: .large, fonts: W3WFonts(), padding: W3WPadding.medium)
  public static let standardTextFields  =  W3WStyles(cornerRadius: .small, padding: W3WPadding.fine)
  public static let standardLabels      =  W3WStyles(fonts: W3WFonts(), padding: W3WPadding.medium)
  public static let standardCells      =  W3WStyles(fonts: W3WFonts().with(body: .semibold), padding: W3WPadding.medium)
  public static let standardMaps      =  W3WStyles(fonts: W3WFonts(), padding: W3WPadding.medium)
  public static let standardOcr      =  W3WStyles(border: .twoPoint,
                                                  fonts: W3WFonts().with(headline: .bold).with(body: .semibold).with(footnote: .bold),
                                                  lineThickness: .fourPoint)
  public static let w3wOld             =  W3WStyles(fonts: W3WFonts(), padding: W3WPadding.medium)
  public static let w3wButtons     =  W3WStyles(cornerRadius: .large, fonts: W3WFonts(), padding: W3WPadding.medium)
  public static let w3wTextFields =  W3WStyles(cornerRadius: .small, padding: W3WPadding.fine)
  public static let w3wLabels    =  W3WStyles(fonts: W3WFonts(), padding: W3WPadding.medium)
  public static let w3wMaps     =  W3WStyles(fonts: W3WFonts(), padding: W3WPadding.medium)
  public static let w3wCells   =  W3WStyles(fonts: W3WFonts(), padding: W3WPadding.medium)
  public static let w3wOcr    =  W3WStyles(border: .twoPoint, 
                                           fonts: W3WFonts().with(headline: .bold).with(body: .semibold).with(footnote: .bold),
                                           lineThickness: .fourPoint)
}

