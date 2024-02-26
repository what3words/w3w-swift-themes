//
//  W3WVisualEffect.swift
//  
//
//  Created by Thy Nguyen on 25/02/2024.
//

import Foundation

public struct W3WVisualEffect {
  public let blurEffectStyle: Int
  public let vibrancyEffectStyle: Int
  public var padding: W3WPadding = 0.0
  public var cornerRadius: W3WCornerRadius = 0.0
  
  public init(blurEffectStyle: Int,
              padding: W3WPadding = 0.0,
              cornerRadius: W3WCornerRadius = 0.0) {
    self.blurEffectStyle = blurEffectStyle
    self.vibrancyEffectStyle = 0
    self.padding = padding
    self.cornerRadius = cornerRadius
  }
  
  @available(iOS 13.0, *)
  public init(blurEffectStyle: Int,
              vibrancyEffectStyle: Int,
              padding: W3WPadding = 0.0,
              cornerRadius: W3WCornerRadius = 0.0) {
    self.blurEffectStyle = blurEffectStyle
    self.vibrancyEffectStyle = vibrancyEffectStyle
    self.padding = padding
    self.cornerRadius = cornerRadius
  }
}
