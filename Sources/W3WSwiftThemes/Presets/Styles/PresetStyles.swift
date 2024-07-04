//
//  File.swift
//  
//
//  Created by Dave Duprey on 21/03/2023.
//


extension W3WStyles {
  
  public static let w3w = W3WStyles.standard

  public static let standard =  W3WStyles(font: W3WTypefaces().body, padding: W3WPadding.medium)
  
  static public func buttonSmall(theme: W3WTheme? = .standard) -> W3WStyles { return W3WStyles(cornerRadius: .oval, font: .buttonSmall(theme: theme), padding: W3WPadding(top: 20.0, left: 20.0, bottom: 20.0, right: 20.0)) }
  static public func buttonMeduim(theme: W3WTheme? = .standard) -> W3WStyles { return W3WStyles(cornerRadius: .oval, font: .buttonMedium(theme: theme), padding: W3WPadding(top: 10.0, left: 14.0, bottom: 10.0, right: 14.0)) }
  static public func buttonLarge(theme: W3WTheme? = .standard) -> W3WStyles { return W3WStyles(cornerRadius: .regular, font: .buttonLarge(theme: theme), padding: W3WPadding(top:  8.0, left: 10.0, bottom:  8.0, right: 10.0)) }
  static public func buttonCircular(theme: W3WTheme? = .standard) -> W3WStyles { return W3WStyles(cornerRadius: .circle, font: .buttonCircular(theme: theme), padding: W3WPadding(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)) }
  
  public static let standardOld          =  W3WStyles(font: W3WTypefaces().body, padding: W3WPadding.medium)
  public static let standardButtons    =  W3WStyles(cornerRadius: .large, font: W3WTypefaces().body, padding: W3WPadding.medium)
  public static let standardTextFields  =  W3WStyles(cornerRadius: .small, padding: W3WPadding.fine)
  public static let standardLabels      =  W3WStyles(font: W3WTypefaces().body, padding: W3WPadding.medium)
  public static let standardCells      =  W3WStyles(fonts: W3WFonts().with(body: .semibold), padding: W3WPadding.medium)
  public static let standardMaps      =  W3WStyles(font: W3WTypefaces().body, padding: W3WPadding.medium)
  public static let standardOcr      =  W3WStyles(border: .twoPoint, fonts: W3WFonts().with(headline: .bold).with(body: .semibold).with(footnote: .bold), lineThickness: .fourPoint)
  public static let w3wOld          =  W3WStyles(font: W3WTypefaces().body, padding: W3WPadding.medium)
  public static let w3wButtons     =  W3WStyles(cornerRadius: .large, font: W3WTypefaces().body, padding: W3WPadding.medium)
  public static let w3wTextFields =  W3WStyles(cornerRadius: .small, padding: W3WPadding.fine)
  public static let w3wLabels    =  W3WStyles(font: W3WTypefaces().body, padding: W3WPadding.medium)
  public static let w3wMaps     =  W3WStyles(font: W3WTypefaces().body, padding: W3WPadding.medium)
  public static let w3wCells   =  W3WStyles(font: W3WTypefaces().body, padding: W3WPadding.medium)
  public static let w3wOcr    =  W3WStyles(border: .twoPoint,
                                           fonts: W3WFonts().with(headline: .bold).with(body: .semibold).with(footnote: .bold),
                                           lineThickness: .fourPoint)
}

