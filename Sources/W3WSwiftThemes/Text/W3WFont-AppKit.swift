//
//  File.swift
//  
//
//  Created by Dave Duprey on 30/07/2024.
//


#if canImport(AppKit)

import AppKit
import CoreText

/// returns a UIFont colour
extension W3WFont {
  
  public var nsFont: NSFont {
    get {
      NSFont(font)
    }
  }
  
}

#endif

