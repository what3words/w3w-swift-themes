//
//  File.swift
//  
//
//  Created by Dave Duprey on 07/04/2022.
//

import CoreGraphics


public struct W3WShadow {
  public let color: W3WColor
  public let opacity: CGFloat
  public let radius: CGFloat
  public let offsetX: CGFloat
  public let offsetY: CGFloat
  
  public init(color: W3WColor = .black, opacity: CGFloat = 1, radius: CGFloat = 0, offsetX: CGFloat = 0, offsetY: CGFloat = 0) {
    self.color = color
    self.radius = radius
    self.opacity = opacity
    self.offsetX = offsetX
    self.offsetY = offsetY
  }
  
}

