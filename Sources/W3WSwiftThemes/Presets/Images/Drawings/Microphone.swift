//
//  File.swift
//  
//
//  Created by Dave Duprey on 31/01/2024.
//

import CoreGraphics

/// commonly used w3w drawlists such as mic icon, tripple slashes etc
extension W3WDrawing {
  
  
  /// mic icon with the slashes inside
  public static let micWithSlashes: W3WDrawing = .mic + .micSlashes
  
  
  /// mic icon filled, with slashes
  public static let micFilledWithSlashes: W3WDrawing = .micFill + .mic + .micSlashes
  
  
  /// microphone icon
  public static let mic: W3WDrawing = [
    // base
    .line(W3WDrawLine(start: CGPoint(x: 0.37,  y: 0.975), end: CGPoint(x: 0.63, y: 0.975), color: .foreground, width: 0.05)),
    .line(W3WDrawLine(start: CGPoint(x: 0.50,  y: 1.00),  end: CGPoint(x: 0.50, y: 0.85),  color: .foreground, width: 0.05)),
    
    // base line ends
    .circle(W3WDrawCircle(center: CGPoint(x: 0.37,  y: 0.975), radius: 0.025, color: .foreground)),
    .circle(W3WDrawCircle(center: CGPoint(x: 0.63, y: 0.975), radius: 0.025, color: .foreground)),
    
    // oval handle
    .arc(W3WDrawArc(center:  CGPoint(x: 0.50,  y: 0.50), radius: 0.35, start: 0.0, end: .pi, color: .foreground, width: 0.05)),
    .line(W3WDrawLine(start: CGPoint(x: 0.15,  y: 0.45),  end: CGPoint(x: 0.15,  y: 0.50), color: .foreground, width: 0.05)),
    .circle(W3WDrawCircle(center: CGPoint(x: 0.15,  y: 0.45), radius: 0.025, color: .foreground)),
    .line(W3WDrawLine(start: CGPoint(x: 0.85,  y: 0.45),  end: CGPoint(x: 0.85,  y: 0.50), color: .foreground, width: 0.05)),
    .circle(W3WDrawCircle(center: CGPoint(x: 0.85,  y: 0.45), radius: 0.025, color: .foreground)),
    
    // oval bottom
    .arc(W3WDrawArc(center:  CGPoint(x: 0.50,  y: 0.50), radius: 0.25, start: 0.0, end: .pi, color: .foreground, width: 0.05)),
    
    // oval sides
    .line(W3WDrawLine(start: CGPoint(x: 0.75, y: 0.25), end: CGPoint(x: 0.75, y: 0.5), color: .foreground, width: 0.05)),
    .line(W3WDrawLine(start: CGPoint(x: 0.25, y: 0.25), end: CGPoint(x: 0.25, y: 0.5), color: .foreground, width: 0.05)),
    
    // oval top
    .arc(W3WDrawArc(center:  CGPoint(x: 0.50,  y: 0.25 + 0.025), radius: 0.25, start: .pi, end: .pi * 2.0, color: .foreground, width: 0.05)),
  ]
  
  
  /// filled background for a mic icon
  public static let micFill: W3WDrawing = [
    // oval bottom
    .circle(W3WDrawCircle(center: CGPoint(x: 0.50,  y: 0.50), radius: 0.25, color: .foreground)),
    
    // oval sides
    .line(W3WDrawLine(start: CGPoint(x: 0.50,  y: 0.50), end: CGPoint(x: 0.50,  y: 0.25 + 0.025), color: .foreground, width: 0.5)),
    
    // oval top
    .circle(W3WDrawCircle(center:  CGPoint(x: 0.50,  y: 0.25 + 0.025), radius: 0.25, color: .foreground)),
  ]
  
  
  /// slashes that go inside the mic icon
  public static let micSlashes: W3WDrawing = [
    .line(W3WDrawLine(start: CGPoint(x: 0.54,  y: 0.275), end: CGPoint(x: 0.46, y: 0.525), color: .tint, width: 0.05)),
    .circle(W3WDrawCircle(center: CGPoint(x: 0.54, y: 0.275), radius: 0.025, color: .tint)),
    .circle(W3WDrawCircle(center: CGPoint(x: 0.46, y: 0.525), radius: 0.025, color: .tint)),
    
      .line(W3WDrawLine(start: CGPoint(x: 0.54 - 0.1,  y: 0.275), end: CGPoint(x: 0.46 - 0.1, y: 0.525), color: .tint, width: 0.05)),
    .circle(W3WDrawCircle(center: CGPoint(x: 0.54 - 0.1, y: 0.275), radius: 0.025, color: .tint)),
    .circle(W3WDrawCircle(center: CGPoint(x: 0.46 - 0.1, y: 0.525), radius: 0.025, color: .tint)),
    
      .line(W3WDrawLine(start: CGPoint(x: 0.54 + 0.1,  y: 0.275), end: CGPoint(x: 0.46 + 0.1, y: 0.525), color: .tint, width: 0.05)),
    .circle(W3WDrawCircle(center: CGPoint(x: 0.54 + 0.1, y: 0.275), radius: 0.025, color: .tint)),
    .circle(W3WDrawCircle(center: CGPoint(x: 0.46 + 0.1, y: 0.525), radius: 0.025, color: .tint)),
  ]
  
  
  
  /// halo for mic icon
  public static func halo(radius: CGFloat, center: CGPoint = CGPoint(x: 0.5, y: 0.5)) -> W3WDrawing {
    return [
      .circle(W3WDrawCircle(center: center, radius: radius * 1.000, color: .background)),
      .circle(W3WDrawCircle(center: center, radius: radius * 0.709, color: .foreground)),
      .circle(W3WDrawCircle(center: center, radius: radius * 0.484, color: .tint))
    ]
  }
  

  /// circle to go around a mic icon
  public static let micCircle: W3WDrawing = [
    .circle(W3WDrawCircle(center: CGPoint(x: 0.50,  y: 0.50), radius: 0.2, color: .background)),
  ]
  

}
