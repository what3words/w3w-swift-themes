//
//  File.swift
//  
//
//  Created by Dave Duprey on 04/07/2024.
//


public extension W3WFont {
  
  static func buttonSmall(theme: W3WTheme? = .standard) -> W3WFont {
    return W3WFont(name: theme?.typefaces?.subheadline.name ?? "SF Pro", size: theme?.typefaces?.subheadline.size ?? 17.0)
  }
  
  static func buttonMedium(theme: W3WTheme? = .standard) -> W3WFont {
    return W3WFont(name: theme?.typefaces?.subheadline.name ?? "SF Pro", size: theme?.typefaces?.subheadline.size ?? 17.0)
  }
  
  static func buttonLarge(theme: W3WTheme? = .standard) -> W3WFont {
    return W3WFont(name: theme?.typefaces?.headline.name ?? "SF Pro", size: theme?.typefaces?.headline.size ?? 17.0)
  }
  
  static func buttonCircular(theme: W3WTheme? = .standard) -> W3WFont {
    return W3WFont(name: theme?.typefaces?.headline.name ?? "SF Pro", size: theme?.typefaces?.headline.size ?? 17.0)
  }

}
