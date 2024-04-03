//
//  File.swift
//  
//
//  Created by Dave Duprey on 26/04/2022.
//

import Foundation

#if canImport(UIKit)
import UIKit

extension UIColor {
  
  /// what3words extension to get a W3WColor object from a UIColor, defined in the W3WSwiftDesign module
  public var w3wColor: W3WColor {
    get {
      return W3WColor(uiColor: light(), dark: dark()) // return W3WColor(uiColor: self)
    }
  }

  
  /// what3words extension to get a W3WCoreColor object from a UIColor, defined in the W3WSwiftDesign module
  public var w3wCoreColor: W3WCoreColor {
    get {
      return W3WCoreColor(uiColor: self)
    }
  }
  

  /// if this UIColor is a UI element color (semantic color) then get the subcolor for light mode otherwise return self
  func light() -> UIColor {
    if #available(iOS 13, *) {
      return self.colorFor(mode: .light)
    } else {
      return self
    }
  }
  

  /// if this UIColor is a UI element color (semantic color) then get the subcolor for dark mode otherwise return self
  func dark() -> UIColor {
    if #available(iOS 13, *) {
      return self.colorFor(mode: .dark)
    } else {
      return self
    }
  }
  

  /// if this UIColor is a UI element color (semantic color) then find the subcolor for light or dark mode
  /// - Parameters:
  ///   - mode: specify .light or .dark
  @available(iOS 12.0, *)
  func colorFor(mode: UIUserInterfaceStyle) -> UIColor {
    if #available(iOS 13, *) {
      return self.resolvedColor(with: UITraitCollection(userInterfaceStyle: mode))
    } else {
      return self
    }
  }
  

}

#endif
