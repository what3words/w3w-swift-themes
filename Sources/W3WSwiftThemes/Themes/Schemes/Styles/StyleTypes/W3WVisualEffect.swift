//
//  W3WVisualEffect.swift
//  
//
//  Created by Thy Nguyen on 25/02/2024.
//

import UIKit

public struct W3WVisualEffect {
  public let blurEffect: UIBlurEffect
  public let vibrantEffect: UIVibrancyEffect?
  public var padding: W3WPadding = 0.0
  public var cornerRadius: W3WCornerRadius = 0.0
}

public extension W3WVisualEffect {
  init(blurEffectStyle: UIBlurEffect.Style,
       padding: W3WPadding = 0.0,
       cornerRadius: W3WCornerRadius = 0.0) {
    self.blurEffect = UIBlurEffect(style: blurEffectStyle)
    self.vibrantEffect = UIVibrancyEffect(blurEffect: blurEffect)
    self.padding = padding
    self.cornerRadius = cornerRadius
  }
  
  @available(iOS 13.0, *)
  init(blurEffectStyle: UIBlurEffect.Style, 
       vibrancyEffectStyle: UIVibrancyEffectStyle,
       padding: W3WPadding = 0.0,
       cornerRadius: W3WCornerRadius = 0.0) {
    self.blurEffect = UIBlurEffect(style: blurEffectStyle)
    self.vibrantEffect = UIVibrancyEffect(blurEffect: blurEffect, style: vibrancyEffectStyle)
    self.padding = padding
    self.cornerRadius = cornerRadius
  }
}
