//
//  File.swift
//  
//
//  Created by Dave Duprey on 01/09/2022.
//

import UIKit


/// commonly used w3w drawlists such as mic icon, tripple slashes etc
extension W3WDrawing {
  
  public static let chevronBackwards: W3WDrawing = [
    .line(W3WDrawLine(start: CGPoint(x: 0.325, y: 0.5), end: CGPoint(x: 0.62, y: 0.2), color: .foreground, width: 0.065)),
    .line(W3WDrawLine(start: CGPoint(x: 0.325, y: 0.5), end: CGPoint(x: 0.62, y: 0.8), color: .foreground, width: 0.065)),
    .circle(W3WDrawCircle(center: CGPoint(x: 0.325, y: 0.5),  radius: 0.0325, color: .foreground)),
    .circle(W3WDrawCircle(center: CGPoint(x: 0.62, y: 0.2), radius: 0.0325, color: .foreground)),
    .circle(W3WDrawCircle(center: CGPoint(x: 0.62, y: 0.8), radius: 0.0325, color: .foreground)),

  ]

}
