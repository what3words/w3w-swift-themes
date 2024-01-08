//
//  File.swift
//  
//
//  Created by Dave Duprey on 03/07/2023.
//

import Foundation


import Foundation

public struct W3WSetTypes: Hashable, Equatable, ExpressibleByStringLiteral {
  public typealias StringLiteralType = String

  public let value: String
  
  public init(value: String) { self.value = value }
  public init(stringLiteral value: String) { self.value = value }
  
  public static let base: W3WSetTypes = "base"
  public static let textFields: W3WSetTypes = "textFields"
  public static let cells: W3WSetTypes = "cells"
  public static let buttons: W3WSetTypes = "buttons"
  public static let labels: W3WSetTypes = "labels"
  public static let maps: W3WSetTypes = "maps"
  public static let icons: W3WSetTypes = "icons"
  public static let voice: W3WSetTypes = "voice"
  public static let ocr: W3WSetTypes = "ocr"
}

