//
//  File.swift
//  
//
//  Created by Dave Duprey on 31/08/2022.
//


// THESE ARE COLOURS LEFT OVER FROM EARLIER VERSIONS OF THIS PACKAGE
// THEY WILL BE REMOVED IN A FUTURE VERSION


extension W3WColors {
  
  @available(*, deprecated)
  static public let iconGray      = W3WColors(foreground: .systemGray, background: .clear, tint: .systemGray, secondary: .systemGray)
  @available(*, deprecated)
  static public let iconBlue      = W3WColors(foreground: W3WColor(light: .darkBlue, dark: .white), background: .clear, tint: W3WColor(light: .darkBlue, dark: .white), secondary: W3WColor(light: .darkBlue, dark: .white))
  @available(*, deprecated)
  static public let iconBlueFill  = W3WColors(foreground: W3WColor(light: .darkBlue, dark: .white), background: .clear, tint: W3WColor(light: .white, dark: .darkBlue), secondary: W3WColor(light: .darkBlue, dark: .white))
  @available(*, deprecated)
  static public let iconBlack     = W3WColors(foreground: .foreground, background: .clear, tint: .foreground, secondary: .foreground)
  @available(*, deprecated)
  static public let iconBlackFill = W3WColors(foreground: .foreground, background: .clear, tint: .background, secondary: .foreground)
  @available(*, deprecated)
  static public let iconRed       = W3WColors(foreground: .red, background: .clear, tint: .red, secondary: .red)
  @available(*, deprecated)
  static public let iconRedFill    = W3WColors(foreground: .red, background: .clear, tint: .white, secondary: .red)
  
  @available(*, deprecated)
  static public let emptyColorSet   = W3WColors(foreground: nil, background: nil, tint: nil, secondary: nil)
  
  @available(*, deprecated)
  static public let blackGrayRed     = W3WColors(foreground: .black,    background: .white,        tint: .red,     secondary: .secondaryDarkGray)
  @available(*, deprecated)
  static public let darkBlueGrayRed   = W3WColors(foreground: .darkBlue, background: .white,          tint: .red,     secondary: .secondaryDarkGray)
  @available(*, deprecated)
  static public let lightDarkMode      = W3WColors(foreground: .text,     background: .background,       tint: .red,     secondary: .secondaryDarkGray)
  @available(*, deprecated)
  static public let blackWhitePowder   = W3WColors(foreground: .black,    background: .powderBlue,         tint: .black,   secondary: .secondaryGray)
  @available(*, deprecated)
  static public let whiteGrayRed       = W3WColors(foreground: .white,    background: .offDarkGrey,          tint: .red,     secondary: .secondaryGray)
  @available(*, deprecated)
  static public let blackWhiteBlue    = W3WColors(foreground: .black,    background: .secondarySystemBackground, tint: .systemBlue, secondary: .secondaryGray)
  @available(*, deprecated)
  static public let blackWhite       = W3WColors(foreground: .black,    background: .white,                      tint: .black,       secondary: .black)
  @available(*, deprecated)
  static public let halo            = W3WColors(foreground: .red.with(alpha: 0.15), background: .red.with(alpha: 0.1), tint: .red.with(alpha: 0.3), secondary: .red.with(alpha: 0.15))
  @available(*, deprecated)
  static public let mapPinDefault   = W3WColors(foreground: .white, background: .blue, tint: .blue, secondary: .blue)
  
  @available(*, deprecated)
  static public let searchBox       = W3WColors(foreground: .black, background: W3WColor(all: W3WCoreColor(hex: 0x767680, alpha: 0.12)), tint: .labelColourLight, secondary: .labelColourLight)
  @available(*, deprecated)
  static public let searchIcon      = W3WColors(foreground: .secondaryLabel, background: .clear, tint: .secondaryLabel,   secondary: .secondaryLabel)
  @available(*, deprecated)
  static public let microphoneOff    = W3WColors(foreground: .red,   background: .clear,       tint: .white, secondary: .red)
  @available(*, deprecated)
  static public let microphoneOn      = W3WColors(foreground: .red,   background: .clear,       tint: .red,   secondary: .red)
  @available(*, deprecated)
  static public let microphoneGray      = W3WColors(foreground: .secondaryLabel, background: .clear, tint: .secondaryLabel,   secondary: .secondaryLabel)
  @available(*, deprecated)
  static public let microphoneWhiteBlack  = W3WColors(foreground: .white, background: .white, tint: .black,   secondary: .white)
  @available(*, deprecated)
  static public let microphoneRedWhiteLogo = W3WColors(foreground: .red, background: .red, tint: .white, secondary: .red)
  @available(*, deprecated)
  static public let microphoneWhiteOutline = W3WColors(foreground: .white, background: .red, tint: .white, secondary: .white)
  
  //static public let blackGrayRedScheme     = W3WColorSetcheme(main: .blackGrayRed, brand: .darkBlue, highlight: W3WBasicColors(foreground: .text, background: .darkBlue), border: .mediumGrey, separator: .lightGrey, shadow: .offDarkGrey, placeholder: .mediumGrey, error: .error)
  @available(*, deprecated)
  static public let blackGrayRedScheme     = W3WColors(foreground: .black, background: .white, tint: .red, secondary: .secondaryDarkGray, brand: .darkBlue, highlight: W3WBasicColors(foreground: .text, background: .darkBlue), border: .mediumGrey, separator: .lightGrey, shadow: .offDarkGrey, placeholder: .mediumGrey, error: .error)
  @available(*, deprecated)
  static public let darkBlueGrayRedScheme  = W3WColors(foreground: .darkBlue, background: .white, tint: .red, secondary: .secondaryDarkGray, brand: .darkBlue, highlight: W3WBasicColors(foreground: .text, background: .darkBlue), border: .mediumGrey, separator: .lightGrey, shadow: .offDarkGrey, placeholder: .mediumGrey, error: .error)
  
}



// MARK: W3WCoreColor


extension W3WCoreColor {

  // design docs names (same colours as above)
  @available(*, deprecated)
  static public let w3wRed        = red
  @available(*, deprecated)
  static public let primaryBlue   = darkBlue
  @available(*, deprecated)
  static public let secondaryBlue  = royalBlue
  @available(*, deprecated)
  static public let teal            = lightCyan
  @available(*, deprecated)
  static public let informationBlue  = lightBlue
  @available(*, deprecated)
  static public let confirmationGreen = green
  @available(*, deprecated)
  static public let warningYellow     = yellow
  @available(*, deprecated)
  static public let errorRed         = coral
  @available(*, deprecated)
  static public let errorRedText    = dullRed
  @available(*, deprecated)
  static public let linkVisited    = purple
  @available(*, deprecated)
  static public let regular       = darkBlue.with(alpha: 0.6)
  @available(*, deprecated)
  static public let dark         = darkBlue.with(alpha: 0.96)
  
  // greys
  //static public let grey92      = W3WCoreColor(grey: 0.92)
  @available(*, deprecated)
  static public let grey84      = W3WCoreColor(grey: 0.84)
  @available(*, deprecated)
  static public let grey77      = W3WCoreColor(grey: 0.77)
  //static public let grey50       = W3WCoreColor(grey: 0.5)
  @available(*, deprecated)
  static public let grey38        = W3WCoreColor(grey: 0.38)
  //static public let grey32         = W3WCoreColor(grey: 0.32)
  
  // off greys
  @available(*, deprecated)
  static public let offGrey           = W3WCoreColor(hex: 0xF2F4F5)
  @available(*, deprecated)
  static public let offLightGrey       = W3WCoreColor(hex: 0xB5B5B5)
  @available(*, deprecated)
  static public let offMidGrey          = W3WCoreColor(hex: 0x525E66)
  @available(*, deprecated)
  static public let offDarkGrey           = W3WCoreColor(hex: 0x31383D)
  
  // iOS System Colours
  @available(*, deprecated)
  static public let systemBackgroundLight       = W3WCoreColor(hex: 0xFFFFFF)
  @available(*, deprecated)
  static public let systemBackgroundDark          = W3WCoreColor(hex: 0x000000)
  @available(*, deprecated)
  static public let secondarySystemBackgroundLight  = W3WCoreColor(hex: 0xF2F2F7)
  @available(*, deprecated)
  static public let secondarySystemBackgroundDark    = W3WCoreColor(hex: 0x1C1C1E)
  @available(*, deprecated)
  static public let tertiarySystemBackgroundLight     = W3WCoreColor(hex: 0xFFFFFF)
  @available(*, deprecated)
  static public let tertiarySystemBackgroundDark       = W3WCoreColor(hex: 0x2C2C2E)
  @available(*, deprecated)
  static public let systemGroupedBackgroundLight        = W3WCoreColor(hex: 0xF2F2F7)
  @available(*, deprecated)
  static public let systemGroupedBackgroundDark          = W3WCoreColor(hex: 0x000000)
  @available(*, deprecated)
  static public let secondarySystemGroupedBackgroundLight = W3WCoreColor(hex: 0xFFFFFF)
  @available(*, deprecated)
  static public let secondarySystemGroupedBackgroundDark   = W3WCoreColor(hex: 0x1C1C1E)
  @available(*, deprecated)
  static public let tertiarySystemGroupedBackgroundLight   = W3WCoreColor(hex: 0xF2F2F7)
  @available(*, deprecated)
  static public let tertiarySystemGroupedBackgroundDark   = W3WCoreColor(hex: 0x2C2C2E)
  
  @available(*, deprecated)
  static public let labelLight                          = W3WCoreColor(hex: 0x000000)
  @available(*, deprecated)
  static public let labelDark                         = W3WCoreColor(hex: 0xFFFFFF)
  @available(*, deprecated)
  static public let secondaryLabelLight             = W3WCoreColor(hex: 0x3C3C43, alpha: 0.6)
  @available(*, deprecated)
  static public let secondaryLabelDark            = W3WCoreColor(hex: 0xEBEBF5, alpha: 0.6)
  @available(*, deprecated)
  static public let tertiaryLabelLight          = W3WCoreColor(hex: 0x3C3C43, alpha: 0.3)
  @available(*, deprecated)
  static public let tertiaryLabelDark         = W3WCoreColor(hex: 0xEBEBF5, alpha: 0.3)
  @available(*, deprecated)
  static public let quaternaryLabelLight     = W3WCoreColor(hex: 0x3C3C43, alpha: 0.2)
  @available(*, deprecated)
  static public let quaternaryLabelDark     = W3WCoreColor(hex: 0xEBEBF5, alpha: 0.2)
  
  @available(*, deprecated)
  static public let placeholderTextLight  = W3WCoreColor(hex: 0x3C3C43, alpha: 0.3)
  @available(*, deprecated)
  static public let placeholderTextDark  = W3WCoreColor(hex: 0xEBEBF5, alpha: 0.3)

  @available(*, deprecated)
  static public let primaryFillLight     = W3WCoreColor(hex:0x787880, alpha: 0.2)
  @available(*, deprecated)
  static public let secondaryFillLight   = W3WCoreColor(hex: 0x787880, alpha: 0.16)
  @available(*, deprecated)
  static public let tertiaryFillLight    = W3WCoreColor(hex: 0x767680, alpha: 0.12)
  @available(*, deprecated)
  static public let quaternaryFillLight  = W3WCoreColor(hex: 0x747480, alpha: 0.08)
  @available(*, deprecated)
  static public let quinaryFillLight     = W3WCoreColor(hex: 0xEDEDED, alpha: 0.8)
  @available(*, deprecated)
  static public let senaryFillLight      = W3WCoreColor(hex: 0xF2F2F2, alpha: 0.8)
  @available(*, deprecated)
  static public let septenaryFillLight   = W3WCoreColor(hex: 0xF9F9F9, alpha: 0.86)

  @available(*, deprecated)
  static public let primaryFillDark      = W3WCoreColor(hex:0x787880, alpha: 0.36)
  @available(*, deprecated)
  static public let secondaryFillDark    = W3WCoreColor(hex: 0x787880, alpha: 0.32)
  @available(*, deprecated)
  static public let tertiaryFillDark     = W3WCoreColor(hex: 0x767680, alpha: 0.24)
  @available(*, deprecated)
  static public let quaternaryFillDark   = W3WCoreColor(hex: 0x747480, alpha: 0.18)
  @available(*, deprecated)
  static public let quinaryFillDark      = W3WCoreColor(hex: 0x252525, alpha: 0.5)
  @available(*, deprecated)
  static public let senaryFillDark       = W3WCoreColor(hex: 0x1E1E1E, alpha: 0.75)
  @available(*, deprecated)
  static public let septenaryFillDark    = W3WCoreColor(hex: 0x747480, alpha: 0.18)

  @available(*, deprecated)
  static public let separatorLight       = W3WCoreColor(hex: 0x3C3C43, alpha: 0.3)
  @available(*, deprecated)
  static public let separatorDark        = W3WCoreColor(hex: 0x545458, alpha: 0.6)
  @available(*, deprecated)
  static public let opaqueSeparatorLight = W3WCoreColor(hex: 0xC6C6C8)
  @available(*, deprecated)
  static public let opaqueSeparatorDark  = W3WCoreColor(hex: 0x38383A)
  
  @available(*, deprecated)
  static public let systemBlueLight      = W3WCoreColor(hex: 0x007AFF)
  @available(*, deprecated)
  static public let systemBlueDark      = W3WCoreColor(hex: 0x0A84FF)
  @available(*, deprecated)
  static public let systemGreenLight   = W3WCoreColor(hex: 0x34C759)
  @available(*, deprecated)
  static public let systemGreenDark   = W3WCoreColor(hex: 0x30D158)
  @available(*, deprecated)
  static public let systemIndigoLight = W3WCoreColor(hex: 0x5856D6)
  @available(*, deprecated)
  static public let systemIndigoDark  = W3WCoreColor(hex: 0x5E5CE6)
  @available(*, deprecated)
  static public let systemOrangeLight = W3WCoreColor(hex: 0xFF9500)
  @available(*, deprecated)
  static public let systemOrangeDark  = W3WCoreColor(hex: 0xFF9F0A)
  @available(*, deprecated)
  static public let systemPinkLight   = W3WCoreColor(hex: 0xFF2D55)
  @available(*, deprecated)
  static public let systemPinkDark    = W3WCoreColor(hex: 0xFF375F)
  @available(*, deprecated)
  static public let systemPurpleLight = W3WCoreColor(hex: 0xAF52DE)
  @available(*, deprecated)
  static public let systemPurpleDark  = W3WCoreColor(hex: 0xBF5AF2)
  @available(*, deprecated)
  static public let systemRedLight    = W3WCoreColor(hex: 0xFF3B30)
  @available(*, deprecated)
  static public let systemRedDark     = W3WCoreColor(hex: 0xFF453A)
  @available(*, deprecated)
  static public let systemTealLight   = W3WCoreColor(hex: 0x5AC8FA)
  @available(*, deprecated)
  static public let systemTealDark    = W3WCoreColor(hex: 0x64D2FF)
  @available(*, deprecated)
  static public let systemYellowLight = W3WCoreColor(hex: 0xFFCC00)
  @available(*, deprecated)
  static public let systemYellowDark  = W3WCoreColor(hex: 0xFFD60A)
  
  @available(*, deprecated)
  static public let systemGrayLight   = W3WCoreColor(hex: 0x8E8E93)
  @available(*, deprecated)
  static public let systemGrayDark    = W3WCoreColor(hex: 0x8E8E93)
  @available(*, deprecated)
  static public let systemGray2Light  = W3WCoreColor(hex: 0xAEAEB2)
  @available(*, deprecated)
  static public let systemGray2Dark   = W3WCoreColor(hex: 0x636366)
  @available(*, deprecated)
  static public let systemGray3Light  = W3WCoreColor(hex: 0xC7C7CC)
  @available(*, deprecated)
  static public let systemGray3Dark   = W3WCoreColor(hex: 0x48484A)
  @available(*, deprecated)
  static public let systemGray4Light  = W3WCoreColor(hex: 0xD1D1D6)
  @available(*, deprecated)
  static public let systemGray4Dark   = W3WCoreColor(hex: 0x3A3A3C)
  @available(*, deprecated)
  static public let systemGray5Light  = W3WCoreColor(hex: 0xE5E5EA)
  @available(*, deprecated)
  static public let systemGray5Dark   = W3WCoreColor(hex: 0x2C2C2E)
  @available(*, deprecated)
  static public let systemGray6Light  = W3WCoreColor(hex: 0xF2F2F7)
  @available(*, deprecated)
  static public let systemGray6Dark   = W3WCoreColor(hex: 0x1C1C1E)
  
  // Temp
  static public let darkThick = W3WCoreColor(hex: 0x252525, alpha: 0.9)
  static public let labelQuaternaryLight = W3WCoreColor(hex: 0x73777C)
  static public let labelQuaternaryDark = W3WCoreColor(hex: 0x8F9193)
  static public let labelError = W3WCoreColor(hex: 0x3E0500)
}


// MARK: W3WColor

extension W3WColor {
  
  @available(*, deprecated)
  static public let border                    = W3WColor(light: .black, dark: .white)
  @available(*, deprecated)
  static public let slash                     = W3WColor.red
  @available(*, deprecated)
  static public let errorRed                  = W3WColor(light: .systemRedLight, dark: .systemRedDark)
  
  // brand
  @available(*, deprecated)
  static public let offDarkGrey               = W3WColor(all: .offDarkGrey)
    
  // custom
  
  @available(*, deprecated)
  static public let secondaryGray             = W3WColor(all: .offLightGrey)
  @available(*, deprecated)
  static public let secondaryDarkGray         = W3WColor(all: .grey32)
  
  // highlight
  
  @available(*, deprecated)
  static public let highlightBackground       = W3WColor(light: .blue90, dark: .grey30)
  
  // cta = Call To Action
  @available(*, deprecated)
  static public let ctaText                   = W3WColor(light: .white,      dark: .white)
  
  @available(*, deprecated)
  static public let ctaBackgroundPrimary      = W3WColor(light: .red,        dark: .red)
  @available(*, deprecated)
  static public let ctaBackgroundSecondary    = W3WColor(light: .darkBlue,   dark: .royalBlue)
  @available(*, deprecated)
  static public let ctaBackgroundTertiary     = W3WColor(light: .royalBlue,  dark: .darkBlue)
  
  @available(*, deprecated)
  static public let ctaBodyText1              = W3WColor(light: .darkBlue,   dark: .white)
  @available(*, deprecated)
  static public let ctaBodyText2              = W3WColor(light: .grey32,     dark: .grey92)
  @available(*, deprecated)
  static public let ctaBodyText3              = W3WColor(light: .grey38,     dark: .grey84)
  
  @available(*, deprecated)
  static public let ctaBodyBackground1        = W3WColor(light: .offGrey,    dark: .darkDarkBlue)
  @available(*, deprecated)
  static public let ctaBodyBackground2        = W3WColor(light: .white,      dark: .black)
  @available(*, deprecated)
  static public let ctaBodyBackground3        = W3WColor(light: .powderBlue, dark: .offDarkGrey)
  @available(*, deprecated)
  static public let ctaBodyBackground4        = W3WColor(light: .lightCyan,  dark: .offMidGrey)
  
  // tov = Tone of Voice
  @available(*, deprecated)
  static public let tovConfirmationText       = W3WColor(light: .green,      dark: .darkGreen)
  @available(*, deprecated)
  static public let tovInformaitonText        = W3WColor(light: .darkerCyan, dark: .darkCyan)
  @available(*, deprecated)
  static public let tovWarningText            = W3WColor(light: .brown,      dark: .darkBrown)
  @available(*, deprecated)
  static public let tovErrorText              = W3WColor(light: .dullRed,    dark: .darkerBrown)
  
  @available(*, deprecated)
  static public let tovConfirmationBackground = W3WColor(light: .white,      dark: .brightGreen)
  @available(*, deprecated)
  static public let tovInformaitonBackground  = W3WColor(light: .white,      dark: .lightBlue)
  @available(*, deprecated)
  static public let tovWarningBackground      = W3WColor(light: .white,      dark: .yellow)
  @available(*, deprecated)
  static public let tovErrorBackground        = W3WColor(light: .white,      dark: .coral)
  
  // overlays
  @available(*, deprecated)
  public static let overlaylight              = W3WColor(light: .white.with(alpha: 0.3),      dark: .white.with(alpha: 0.3))
  @available(*, deprecated)
  public static let overlayNormal             = W3WColor(light: .darkBlue.with(alpha: 0.6),   dark: .darkBlue.with(alpha: 0.6))
  @available(*, deprecated)
  public static let overlayDark               = W3WColor(light: .darkBlue.with(alpha: 0.9),   dark: .darkBlue.with(alpha: 0.9))
  
  @available(*, deprecated)
  public static let overlayLightBlur          = W3WColor(light: .white.with(alpha: 0.3),      dark: .white.with(alpha: 0.3))
  @available(*, deprecated)
  public static let overlayNormalBlur         = W3WColor(light: .grey77.with(alpha: 0.01),    dark: .grey77.with(alpha: 0.01))
  @available(*, deprecated)
  public static let overlayDarkBlur           = W3WColor(light: .darkBlue.with(alpha: 0.6),   dark: .darkBlue.with(alpha: 0.6))
  
  @available(*, deprecated)
  public static let overlayHover              = W3WColor(light: .royalBlue.with(alpha: 0.08), dark: .white.with(alpha: 0.12))
  @available(*, deprecated)
  public static let overlayPressed            = W3WColor(light: .royalBlue.with(alpha: 0.16), dark: .black.with(alpha: 0.16))
  @available(*, deprecated)
  public static let overlayDisabled           = W3WColor(light: .grey50.with(alpha: 7),       dark: .grey50.with(alpha: 0.6))
  
  // Label Colours
  @available(*, deprecated)
  public static let labelColourLight           = W3WColor(all: W3WCoreColor(hex: 0x3C3C43, alpha: 0.6))
  
  // iOS System Colours
  
  @available(*, deprecated)
  static public let systemBackground              = W3WColor(light: .systemBackgroundLight,               dark: .systemBackgroundDark)
  @available(*, deprecated)
  static public let secondarySystemBackground      = W3WColor(light: .secondarySystemBackgroundLight,      dark: .secondarySystemBackgroundDark)
  @available(*, deprecated)
  static public let tertiarySystemBackground        = W3WColor(light: .tertiarySystemBackgroundLight,       dark: .tertiarySystemBackgroundDark)
  @available(*, deprecated)
  static public let systemGroupedBackground          = W3WColor(light: .systemGroupedBackgroundLight,         dark: .systemGroupedBackgroundDark)
  @available(*, deprecated)
  static public let secondarySystemGroupedBackground = W3WColor(light: .secondarySystemGroupedBackgroundLight, dark: .secondarySystemBackgroundDark)
  @available(*, deprecated)
  static public let tertiarySystemGroupedBackground  = W3WColor(light: .tertiarySystemGroupedBackgroundLight,   dark: .tertiarySystemGroupedBackgroundDark)
  
  @available(*, deprecated)
  static public let label                            = W3WColor(light: .labelLight,           dark: .labelDark)
  @available(*, deprecated)
  static public let secondaryLabel                  = W3WColor(light: .secondaryLabelLight,  dark: .secondaryLabelDark)
  @available(*, deprecated)
  static public let tertiaryLabel                 = W3WColor(light: .tertiaryLabelLight,   dark: .tertiaryLabelDark)
  @available(*, deprecated)
  static public let quaternaryLabel             = W3WColor(light: .quaternaryLabelLight, dark: .quaternaryLabelDark)
  
  @available(*, deprecated)
  static public let placeholderText          = W3WColor(light: .placeholderTextLight, dark: .placeholderTextDark)
  
  @available(*, deprecated)
  static public let separator             = W3WColor(light: .separatorLight,       dark: .separatorDark)
  @available(*, deprecated)
  static public let opaqueSeparator     = W3WColor(light: .opaqueSeparatorLight, dark: .opaqueSeparatorDark)
  
  @available(*, deprecated)
  static public let primaryFill       = W3WColor(light: .primaryFillLight, dark: .primaryFillDark)
  @available(*, deprecated)
  static public let secondaryFill    = W3WColor(light: .secondaryFillLight, dark: .secondaryFillDark)
  @available(*, deprecated)
  static public let tertiaryFill    = W3WColor(light: .tertiaryFillLight, dark: .tertiaryFillDark)
  @available(*, deprecated)
  static public let quaternaryFill  = W3WColor(light: .quaternaryFillLight, dark: .quaternaryFillDark)
  @available(*, deprecated)
  static public let quinaryFill     = W3WColor(light: .quinaryFillLight, dark: .quinaryFillDark)
  @available(*, deprecated)
  static public let senaryFill      = W3WColor(light: .senaryFillLight, dark: .senaryFillDark)
  @available(*, deprecated)
  static public let septenaryFill   = W3WColor(light: .septenaryFillLight, dark: .septenaryFillDark)
  
  @available(*, deprecated)
  static public let systemBlue      = W3WColor(light: .systemBlueLight,     dark: .systemBlueDark)
  @available(*, deprecated)
  static public let systemGreen     = W3WColor(light: .systemGreenLight,   dark: .systemGreenDark)
  @available(*, deprecated)
  static public let systemIndigo    = W3WColor(light: .systemIndigoLight, dark: .systemIndigoDark)
  @available(*, deprecated)
  static public let systemOrange    = W3WColor(light: .systemOrangeLight, dark: .systemOrangeDark)
  @available(*, deprecated)
  static public let systemPink      = W3WColor(light: .systemPinkLight,   dark: .systemPinkDark)
  @available(*, deprecated)
  static public let systemPurple    = W3WColor(light: .systemPurpleLight, dark: .systemPurpleDark)
  @available(*, deprecated)
  static public let systemRed       = W3WColor(light: .systemRedLight,    dark: .systemRedDark)
  @available(*, deprecated)
  static public let systemTeal      = W3WColor(light: .systemTealLight,   dark: .systemTealDark)
  @available(*, deprecated)
  static public let systemYellow    = W3WColor(light: .systemYellowLight, dark: .systemYellowDark)
  @available(*, deprecated)
  static public let systemGray      = W3WColor(light: .grey60,   dark: .grey60)
  @available(*, deprecated)
  static public let systemGray2     = W3WColor(light: .systemGray2Light,  dark: .systemGray2Dark)
  @available(*, deprecated)
  static public let systemGray3     = W3WColor(light: .systemGray3Light,  dark: .systemGray3Dark)
  @available(*, deprecated)
  static public let systemGray4     = W3WColor(light: .systemGray4Light,  dark: .systemGray4Dark)
  @available(*, deprecated)
  static public let systemGray5     = W3WColor(light: .systemGray5Light,  dark: .systemGray5Dark)
  @available(*, deprecated)
  static public let systemGray6     = W3WColor(light: .systemGray6Light,  dark: .systemGray6Dark)
  
  // Temp
  static public let bottomSheetBackground = W3WColor(light: .white,  dark: .darkThick)
  static public let bottomSheetBodyText = W3WColor(light: .darkBlue,  dark: .powderBlue)
  static public let bottomSheetFootnoteText = W3WColor(light: .labelQuaternaryLight,  dark: .labelQuaternaryDark)
  static public let labelError = W3WColor(all: .labelError)
}


// MARK: W3WBaseColors


extension W3WBasicColors {
  
  @available(*, deprecated)
  static public let error      = W3WBasicColors(foreground: .white, background: .red)
  @available(*, deprecated)
  static public let errorLabel = W3WBasicColors(foreground: .errorRed, background: .clear)

  @available(*, deprecated)
  static public let good  = W3WBasicColors(foreground: .white, background: .green)
  
  @available(*, deprecated)
  static public let demo  = W3WBasicColors(foreground: .labelColourLight, background: .darkBlue)
  
  @available(*, deprecated)
  static public let cellIconFilled = W3WBasicColors(foreground: .white, background: .systemBlue)
  
  @available(*, deprecated)
  static public let highlight = W3WBasicColors(background: .highlightBackground)
  
}




