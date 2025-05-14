//
//  File.swift
//  
//
//  Created by Dave Duprey on 07/04/2022.
//

import CoreGraphics


public struct W3WShadow {
  public let opacity: CGFloat
  public let radius: CGFloat
  public let offsetX: CGFloat
  public let offsetY: CGFloat
  
  @available(*, deprecated, message: "offset has been split into offsetX and offsetY")
  public var offset: CGFloat { offsetX }
  
  @available(*, deprecated, message: "Use init(opacity:radius:offsetX:offsetY:)")
  public init(opacity: CGFloat, offset: CGFloat, radius: CGFloat) {
    self.opacity = opacity
    self.offsetX = offset
    self.offsetY = offset
    self.radius = radius
  }
  
  public init(opacity: CGFloat = 1, radius: CGFloat = 0, offsetX: CGFloat = 0, offsetY: CGFloat = 0) {
    self.radius = radius
    self.opacity = opacity
    self.offsetX = offsetX
    self.offsetY = offsetY
  }
  
}

