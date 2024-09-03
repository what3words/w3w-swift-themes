//
//  File.swift
//  
//
//  Created by Dave Duprey on 31/01/2024.
//

import CoreGraphics


/// commonly used w3w drawlists such as mic icon, tripple slashes etc
extension W3WDrawing {
 
  /// ocr icon, corners and slashes
  public static let ocr = .makeOcrOutline(lineWidth: 0.1, length: 0.25) + .makeSlashes(offset: 0.075, spacing: 0.175, width: 0.06, verticalInset: 0.28)
  
  /// corners of the OCR icon
  public static let ocrOutline: W3WDrawing = .makeOcrOutline()
  
  
  // makes an OCR icon corners
  public static func makeOcrOutline(lineWidth: CGFloat = 0.05, length: CGFloat = 0.2) -> W3WDrawing {
    return [
      .line(W3WDrawLine(start: CGPoint(x: 0.0, y: 0.0), end: CGPoint(x: length, y: 0.0), color: .foreground, width: lineWidth)),
      .line(W3WDrawLine(start: CGPoint(x: 0.0, y: 0.0), end: CGPoint(x: 0.0, y: length), color: .foreground, width: lineWidth)),
      
      .line(W3WDrawLine(start: CGPoint(x: 0.0, y: 1.0), end: CGPoint(x: 0.0, y: 1.0 - length), color: .foreground, width: lineWidth)),
      .line(W3WDrawLine(start: CGPoint(x: 0.0, y: 1.0), end: CGPoint(x: length, y: 1.0), color: .foreground, width: lineWidth)),
      
      .line(W3WDrawLine(start: CGPoint(x: 1.0, y: 1.0), end: CGPoint(x: 1.0, y: 1.0 - length), color: .foreground, width: lineWidth)),
      .line(W3WDrawLine(start: CGPoint(x: 1.0, y: 1.0), end: CGPoint(x: 1.0 - length, y: 1.0), color: .foreground, width: lineWidth)),
      
      .line(W3WDrawLine(start: CGPoint(x: 1.0, y: 0.0), end: CGPoint(x: 1.0, y: length), color: .foreground, width: lineWidth)),
      .line(W3WDrawLine(start: CGPoint(x: 1.0, y: 0.0), end: CGPoint(x: 1.0 - length, y: 0.0), color: .foreground, width: lineWidth)),
    ]
  }
   
}
