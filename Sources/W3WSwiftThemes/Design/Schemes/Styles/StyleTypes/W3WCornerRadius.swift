//
//  File.swift
//  
//
//  Created by Dave Duprey on 25/04/2022.
//

import Foundation
import CoreGraphics


/// corner radius values that correspond to most what3words design standards
public struct W3WCornerRadius: Equatable, ExpressibleByFloatLiteral {
  
  public typealias FloatLiteralType = Float
  
  public let value: CGFloat
  
  public init(value: CGFloat) { self.value = value }
  public init(floatLiteral value: Float) { self.value = CGFloat(value) }
  
  // make exception for nan, nan comparison is weird, we needed a couple float values 
  // that aren't floats to signify two possible corner radius states.  So we chose
  // `NaN` and `infinity` to represent circle and oval respectively
  static public func == (lhs: Self, rhs: Self) -> Bool {
    if lhs.value.isNaN && rhs.value.isNaN {
      return true
    } else {
      return lhs.value == rhs.value
    }
  }

}

