//
//  W3WTextAlignment.swift
//  
//
//  Created by Thy Nguyen on 24/12/2023.
//

#if canImport(UIKit)
import UIKit
#endif


public enum W3WTextAlignment: String, CustomStringConvertible {
  
  case left
  case right
  case center
  case natural
  case justified

  @available(*, deprecated, message: "use the enum value instead, eg: W3WTextAlsignment.left")
  public init(value: W3WTextAlignment) {
    self = value
  }
  
  
#if canImport(UIKit)
  public var value: NSTextAlignment {
    switch self {
      case .left: return NSTextAlignment.left
      case .right: return NSTextAlignment.right
      case .center: return NSTextAlignment.center
      case .natural: return NSTextAlignment.natural
      case .justified: return NSTextAlignment.justified
    }
  }
#else
  var value: W3WTextAlignment {
    return self
  }
#endif

  
  public var description: String {
    return rawValue
  }

  
}
