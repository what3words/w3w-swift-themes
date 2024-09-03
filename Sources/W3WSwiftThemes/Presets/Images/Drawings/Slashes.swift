//
//  File.swift
//  
//
//  Created by Dave Duprey on 31/01/2024.
//


import CoreGraphics


/// commonly used w3w drawlists such as mic icon, tripple slashes etc
extension W3WDrawing {
  
  /// w3w slashes
  public static func makeSlashes(offset: CGFloat = 0.1, spacing: CGFloat = 0.3, width: CGFloat = 0.1, verticalInset: CGFloat = 0.2, translation: CGPoint = .zero, color: W3WColorSetNames = .tint) -> W3WDrawing {
    
    let l0top     = CGPoint(x: 0.5 + offset + translation.x,  y: verticalInset + translation.y)
    let l0bottom  = CGPoint(x: 0.5 - offset + translation.x, y: 1.0 - verticalInset + translation.y)
    
    let l1top     = CGPoint(x: 0.5 + offset + translation.x - spacing,  y: verticalInset + translation.y)
    let l1bottom  = CGPoint(x: 0.5 - offset + translation.x - spacing, y: 1.0 - verticalInset + translation.y)
    
    let l2top     = CGPoint(x: 0.5 + offset + translation.x + spacing,  y: verticalInset + translation.y)
    let l2bottom  = CGPoint(x: 0.5 - offset + translation.x + spacing, y: 1.0 - verticalInset + translation.y)
    
    return [
      .line(W3WDrawLine(start: l0top, end: l0bottom, color: color, width: width)),
      .circle(W3WDrawCircle(center: l0top,    radius: width / 2.0, color: color)),
      .circle(W3WDrawCircle(center: l0bottom, radius: width / 2.0, color: color)),
      
      .line(W3WDrawLine(start: l1top, end: l1bottom, color: color, width: width)),
      .circle(W3WDrawCircle(center: l1top,    radius: width / 2.0, color: color)),
      .circle(W3WDrawCircle(center: l1bottom, radius: width / 2.0, color: color)),
      
      .line(W3WDrawLine(start: l2top, end: l2bottom, color: color, width: width)),
      .circle(W3WDrawCircle(center: l2top,    radius: width / 2.0, color: color)),
      .circle(W3WDrawCircle(center: l2bottom, radius: width / 2.0, color: color)),
    ]
  }

}
