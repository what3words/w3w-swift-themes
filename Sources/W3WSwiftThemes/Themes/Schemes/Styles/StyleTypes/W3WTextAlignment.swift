//
//  W3WTextAlignment.swift
//  
//
//  Created by Thy Nguyen on 24/12/2023.
//

import UIKit

public struct W3WTextAlignment: CustomStringConvertible {
  public let value: NSTextAlignment
  
  public init(value: NSTextAlignment) {
    self.value = value
  }
  
  public var description: String {
    switch value {
    case .left:
      return "left"
    case .right:
      return "right"
    case .center:
      return "center"
    case .natural:
      return "natural"
    case .justified:
      return "justified"
    default:
      return ""
    }
  }
}
