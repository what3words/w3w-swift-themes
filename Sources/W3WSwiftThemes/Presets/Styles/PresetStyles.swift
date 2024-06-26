//
//  File.swift
//  
//
//  Created by Dave Duprey on 21/03/2023.
//

import UIKit


extension W3WStyles {
  
  public static let w3w = W3WStyles.standard

  
  public static let standard =  W3WStyles(fonts: W3WFonts(), padding: W3WPadding.medium)
  
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

