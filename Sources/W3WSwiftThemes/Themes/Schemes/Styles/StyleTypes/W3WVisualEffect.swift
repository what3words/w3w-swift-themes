//
//  W3WVisualEffect.swift
//  
//
//  Created by Thy Nguyen on 25/02/2024.
//

public enum W3WVisualEffectBlur {
  case ultraThin
  case thin
  case regular
  case thick
  case ultraThick
}


public enum W3WVisualEffectFill {
  case label
  case secondaryLabel
  case tertiaryLabel
  case quaternaryLabel
  case fill
  case secondaryFill
  case tertiaryFill
  case separator
}


public struct W3WVisualEffect {
  public let style: W3WVisualEffectBlur
  public let fill: W3WVisualEffectFill
  public let padding: W3WPadding
  public let cornerRadius: W3WCornerRadius
  
  public init(style: W3WVisualEffectBlur, fill: W3WVisualEffectFill, padding: W3WPadding, cornerRadius: W3WCornerRadius) {
    self.style = style
    self.fill = fill
    self.padding = padding
    self.cornerRadius = cornerRadius
  }
}

