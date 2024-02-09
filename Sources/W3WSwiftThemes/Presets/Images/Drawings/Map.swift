//
//  File.swift
//  
//
//  Created by Dave Duprey on 31/01/2024.
//

import UIKit


/// commonly used w3w drawlists such as mic icon, tripple slashes etc
extension W3WDrawing {
  
  public static let mapPin: W3WDrawing = .mapPinBackground + .makeSlashes(offset: 0.055, spacing: 0.175, width: 0.06, verticalInset: 0.32, translation: CGPoint(x: 0.0, y: -0.055), color: .foreground)
  
  public static let mapCircle: W3WDrawing = .mapCircleBackground + .makeSlashes(offset: 0.055, spacing: 0.175, width: 0.06, verticalInset: 0.32, color: .foreground)

  public static let mapPinBackground: W3WDrawing = [
    .rectangle(W3WDrawRectangle(rectangle: CGRect(x: 0.075, y: 0.0, width: 0.85, height: 0.85), color: .background)),
    .line(W3WDrawLine(start: CGPoint(x: 0.2 + 0.1, y: 0.7 - 0.1), end: CGPoint(x: 0.5 + 0.1, y: 1.0 - 0.1), color: .background, width: 0.25))
  ]
    
  public static let mapCircleBackground: W3WDrawing = [
    .circle(W3WDrawCircle(center: CGPoint(x: 0.5, y: 0.5), radius: 0.5, color: .foreground)),
    .circle(W3WDrawCircle(center: CGPoint(x: 0.5, y: 0.5), radius: 0.45, color: .background)),
  ]
  
  
}
