//
//  File.swift
//  
//
//  Created by Dave Duprey on 11/09/2023.
//

import Foundation


extension W3WScheme {

  public static let standard = W3WScheme(colors: .standard, styles: .standard)
  public static let w3w      = W3WScheme(colors: .w3w,      styles: .w3w)

  
  // MARK: Standard Schemes

  public static let standardButtons    = W3WScheme(colors: .standardButtons,    styles: .standardButtons)
  public static let standardButtonGray  = W3WScheme(colors: .standardButtonGray,   styles: .standardButtons)
  public static let standardButtonsPlain = W3WScheme(colors: .standardButtonPlain,   styles: .standardButtons)
  public static let standardButtonFilled = W3WScheme(colors: .standardButtonFilled,   styles: .standardButtons)
  public static let standardButtonTinted = W3WScheme(colors: .standardButtonTinted,   styles: .standardButtons)
  public static let standardTextFields  = W3WScheme(colors: .standardTextFields,     styles: .standardTextFields)
  public static let standardLabels     = W3WScheme(colors: .standardLabels,        styles: .standardLabels)
  public static let standardMaps      = W3WScheme(colors: .standardMaps,       styles: .standardMaps)
  public static let standardCells    = W3WScheme(colors: .standardCells,       styles: .standardCells)
  public static let standardIcons   = W3WScheme(colors: .standardIcons,     styles: nil)
  public static let standardVoice  = W3WScheme(colors: .standardVoice,   styles: nil)
  public static let standardOcr   = W3WScheme(colors: .standardOcr,   styles: .standardOcr)
  
  // MARK: what3words Schemes

  public static let w3wButtons    = W3WScheme(colors: .w3wButtons,    styles: .w3wButtons)
  public static let w3wButtonGray  = W3WScheme(colors: .w3wButtonGray,   styles: .w3wButtons)
  public static let w3wButtonsPlain = W3WScheme(colors: .w3wButtonPlain,   styles: .w3wButtons)
  public static let w3wButtonFilled = W3WScheme(colors: .w3wButtonFilled,   styles: .w3wButtons)
  public static let w3wButtonTinted = W3WScheme(colors: .w3wButtonTinted,   styles: .w3wButtons)
  public static let w3wTextFields  = W3WScheme(colors: .w3wTextFields,     styles: .w3wTextFields)
  public static let w3wLabels     = W3WScheme(colors: .w3wLabels,        styles: .w3wLabels)
  public static let w3wMaps      = W3WScheme(colors: .w3wMaps,          styles: .w3wMaps)
  public static let w3wCells    = W3WScheme(colors: .w3wCells,       styles: .w3wCells)
  public static let w3wIcons   = W3WScheme(colors: .w3wIcons,     styles: nil)
  public static let w3wVoice  = W3WScheme(colors: .w3wVoice,   styles: nil)
  public static let w3wOcr   = W3WScheme(colors: .w3wOcr,   styles: .w3wOcr)

  // MARK: Button Schemes

  static public func buttonPrimarySmall(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonPrimary(theme: theme), styles: .buttonSmall(theme: theme)) }
  static public func buttonPrimaryMedium(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonPrimary(theme: theme), styles: .buttonMedium(theme: theme)) }
  static public func buttonPrimaryLarge(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonPrimary(theme: theme), styles: .buttonLarge(theme: theme)) }
  static public func buttonPrimaryCircular(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonPrimary(theme: theme), styles: .buttonCircular(theme: theme)) }

  static public func buttonSecondarySmall(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonSecondary(theme: theme), styles: .buttonSmall(theme: theme)) }
  static public func buttonSecondaryMedium(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonSecondary(theme: theme), styles: .buttonMedium(theme: theme)) }
  static public func buttonSecondaryLarge(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonSecondary(theme: theme), styles: .buttonLarge(theme: theme)) }
  static public func buttonSecondaryCircular(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonSecondary(theme: theme), styles: .buttonCircular(theme: theme)) }

  static public func buttonTertiarySmall(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonTertiary(theme: theme), styles: .buttonSmall(theme: theme)) }
  static public func buttonTertiaryMedium(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonTertiary(theme: theme), styles: .buttonMedium(theme: theme)) }
  static public func buttonTertiaryLarge(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonTertiary(theme: theme), styles: .buttonLarge(theme: theme)) }
  static public func buttonTertiaryCircular(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonTertiary(theme: theme), styles: .buttonCircular(theme: theme)) }

  static public func buttonQuaternarySmall(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonQuaternary(theme: theme), styles: .buttonSmall(theme: theme)) }
  static public func buttonQuaternaryMedium(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonQuaternary(theme: theme), styles: .buttonMedium(theme: theme)) }
  static public func buttonQuaternaryLarge(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonQuaternary(theme: theme), styles: .buttonLarge(theme: theme)) }
  static public func buttonQuaternaryCircular(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonQuaternary(theme: theme), styles: .buttonCircular(theme: theme)) }

  static public func buttonQuinarySmall(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonQuinary(theme: theme), styles: .buttonSmall(theme: theme)) }
  static public func buttonQuinaryMedium(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonQuinary(theme: theme), styles: .buttonMedium(theme: theme)) }
  static public func buttonQuinaryLarge(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonQuinary(theme: theme), styles: .buttonLarge(theme: theme)) }
  static public func buttonQuinaryCircular(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonQuinary(theme: theme), styles: .buttonCircular(theme: theme)) }

  static public func buttonSenarySmall(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonSenary(theme: theme), styles: .buttonSmall(theme: theme)) }
  static public func buttonSenaryMedium(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonSenary(theme: theme), styles: .buttonMedium(theme: theme)) }
  static public func buttonSenaryLarge(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonSenary(theme: theme), styles: .buttonLarge(theme: theme)) }
  static public func buttonSenaryCircular(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonSenary(theme: theme), styles: .buttonCircular(theme: theme)) }

  static public func buttonSeptenarySmall(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonSeptenary(theme: theme), styles: .buttonSmall(theme: theme)) }
  static public func buttonSeptenaryMedium(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonSeptenary(theme: theme), styles: .buttonMedium(theme: theme)) }
  static public func buttonSeptenaryLarge(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonSeptenary(theme: theme), styles: .buttonLarge(theme: theme)) }
  static public func buttonSeptenaryCircular(theme: W3WTheme? = .standard) -> W3WScheme { W3WScheme(colors: .buttonSeptenary(theme: theme), styles: .buttonCircular(theme: theme)) }

}
