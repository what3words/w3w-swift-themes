//
//  File.swift
//  
//
//  Created by Dave Duprey on 31/01/2024.
//

import UIKit


/// commonly used w3w drawlists such as mic icon, tripple slashes etc
extension W3WDrawing {
  
  /// check mark
  public static let check: W3WDrawing = [
    // circle
    .arc(W3WDrawArc(center: CGPoint(x: 0.5, y: 0.5), radius: 0.475, start: 0.0, end: 2.0 * .pi, color: .foreground, width: 0.05)),
    
    // check
    .line(W3WDrawLine(start: CGPoint(x: 5.75 / 20.0, y: 11.5 / 20.0), end: CGPoint(x: 7.75 / 20.0, y: 13.5 / 20.0), color: .foreground, width: 0.05)),
    .line(W3WDrawLine(start: CGPoint(x: 7.75 / 20.0, y: 13.5 / 20.0), end: CGPoint(x: 14.75 / 20.0, y: 6.5 / 20.0), color: .foreground, width: 0.05)),
    
    // line endpoints
    .circle(W3WDrawCircle(center: CGPoint(x: 5.75 / 20.0, y: 11.5 / 20.0), radius: 0.025, color: .foreground)),
    .circle(W3WDrawCircle(center: CGPoint(x: 7.75 / 20.0, y: 13.5 / 20.0), radius: 0.025, color: .foreground)),
    .circle(W3WDrawCircle(center: CGPoint(x: 14.75 / 20.0, y: 6.5 / 20.0), radius: 0.025, color: .foreground)),
  ]
  
}
