//
//  File.swift
//  
//
//  Created by Dave Duprey on 30/07/2024.
//

#if canImport(SwiftUI)

import SwiftUI
import CoreText

/// returns a UIFont colour
@available(iOS 13.0, *)
extension W3WFont {
  
  public var suFont: Font {
    get {
      Font(font)
    }
  }
  
}

#endif


