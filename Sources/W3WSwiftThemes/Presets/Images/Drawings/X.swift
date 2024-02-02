//
//  File.swift
//
//
//  Created by Dave Duprey on 01/09/2022.
//

import UIKit


/// commonly used w3w drawlists such as mic icon, tripple slashes etc
extension W3WDrawing {
  
  /// X used for close buttons and such
  public static let x: W3WDrawing = [
    .line(W3WDrawLine(start: .zero, end: CGPoint(x: 1.0, y: 1.0), color: .foreground, width: 0.05)),
    .line(W3WDrawLine(start: CGPoint(x: 0.0, y: 1.0), end: CGPoint(x: 1.0, y: 0.0), color: .foreground, width: 0.05)),
  ]
  
}
