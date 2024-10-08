//
//  File.swift
//  
//
//  Created by Dave Duprey on 05/07/2024.
//

import CoreGraphics
#if canImport(UIKit)
import UIKit
#endif


public class W3WFontWeight: Equatable, ExpressibleByFloatLiteral {
  public typealias FloatLiteralType = Float
  
  public let value: CGFloat
  
  required public init(floatLiteral value: Float) {
    self.value = CGFloat(value)
  }
  
  public init(value: CGFloat) { self.value = value }
  
  public init(value: Float) { self.value = CGFloat(value) }

  static public func == (lhs: W3WFontWeight, rhs: W3WFontWeight) -> Bool {
    return lhs.value == rhs.value
  }

  
  #if canImport(UIKit)
  public var uiWeight: UIFont.Weight { get { return UIFont.Weight(rawValue: value) } }
  #endif

}
