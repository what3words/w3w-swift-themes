//
//  File.swift
//  
//
//  Created by Dave Duprey on 04/07/2024.
//


public extension W3WFont {
  
  static func buttonSmall(theme: W3WTheme? = .standard) -> W3WFont {
    return W3WFont(familyName: theme?.typefaces?.subheadline.familyName ?? "SF Pro", size: theme?.typefaces?.subheadline.size ?? 17.0)
  }
  
  static func buttonMedium(theme: W3WTheme? = .standard) -> W3WFont {
    return W3WFont(familyName: theme?.typefaces?.subheadline.familyName ?? "SF Pro", size: theme?.typefaces?.subheadline.size ?? 17.0)
  }
  
  static func buttonLarge(theme: W3WTheme? = .standard) -> W3WFont {
    return W3WFont(familyName: theme?.typefaces?.headline.familyName ?? "SF Pro", size: theme?.typefaces?.headline.size ?? 17.0)
  }
  
  static func buttonCircular(theme: W3WTheme? = .standard) -> W3WFont {
    return W3WFont(familyName: theme?.typefaces?.headline.familyName ?? "SF Pro", size: theme?.typefaces?.headline.size ?? 17.0)
  }

}
