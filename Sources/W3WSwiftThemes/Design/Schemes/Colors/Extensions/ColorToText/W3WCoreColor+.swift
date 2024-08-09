//
//  File.swift
//  
//
//  Created by Dave Duprey on 16/03/2023.
//

import CoreGraphics
import Foundation
#if canImport(UIKit)
import UIKit
#endif


extension W3WCoreColor: CustomDebugStringConvertible, CustomStringConvertible {
  
  public var name: String {
    get {
      return find(color: self.uiColor)
    }
  }

  
  public var description: String {
    return name
  }
  


  public var debugDescription: String {
    return name
  }

  
#if canImport(UIKit)

  func find(color: UIColor) -> String {
    var cname = "Unknown"
    var match = 3.0
    
    var red: CGFloat = 0
    var green: CGFloat = 0
    var blue: CGFloat = 0
    var alpha: CGFloat = 0
    color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
    
    for (hex, _) in Self.names {
      let (r,g,b) = getRGB(hex: hex)
      let difference = colorDifference(r0: r, g0: g, b0: b, r1: red, g1: green, b1: blue)
      if match > difference {
        match = difference
        cname = Self.names[hex] ?? "Unknown"
      }
    }
    
    //print("Colour match: ", match)
    if match > 0.01 {
      cname = "[\(String(format: "%d", Int(red * 100.0)))%,\(String(format: "%d", Int(green * 100.0)))%,\(String(format: "%d", Int(blue * 100.0)))%]"
    }
    
    if alpha == 0.0 {
      cname = "Clear"
      
    } else if alpha < 1.0 {
      cname += " (" + String(format: "%.0f", alpha * 100.0) + "%)"
    }
    

    return cname
  }
  
#else
  func find(color: UIColor) -> String {
    return "Unknown"
  }
#endif

  
  func colorDifference(r0: CGFloat, g0: CGFloat, b0: CGFloat, r1: CGFloat, g1: CGFloat, b1: CGFloat) -> CGFloat {
    let sumR = pow(r1 - r0, 2.0)
    let sumG = pow(g1 - g0, 2.0)
    let sumB = pow(b1 - b0, 2.0)
    return sqrt( sumR + sumB + sumG )
  }
  
  
  func getRGB(hex: String) -> (CGFloat, CGFloat, CGFloat) {
    var rgbValue: UInt64 = 0
    Scanner(string: hex).scanHexInt64(&rgbValue)
    
    let red   = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
    let green = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
    let blue  = CGFloat(rgbValue & 0x0000FF) / 255.0
    
    return (red, green, blue)
  }
  
  
  static let names: [String:String] = [

    // basic
    "000000": "Black",
    "FFFFFF": "White",

    // brand
    "87e1d1": "Aqua",
    "2e71b8": "Blue",
    "363636": "Charcoal",
    "f26c50": "Coral",
    "0a3049": "Dark Blue",
    "53c18a": "Green",
    "e0e0e0": "LightGrey",
    "a7a7a7": "MediumGrey",
    "c5b000": "Mustard",
    "f4a344": "Orange",
    "f6d31f": "Yellow",
    "005379": "Secondary Blue",
    "cd3b72": "Cranberry",
    "8b4ca1": "Purple",
    "65D698": "Bright Green",
    "265239": "Dark Green",
    "1D4752": "Dark Cyan",
    "2B6A7A": "Darker Cyan",
    "52460A": "Dark Brown",
    "7A690F": "Brown",
    "52170B": "Darker Brown",
    "B24000": "Dull Red",
    "001626": "Dark Dark Blue",
    "C2E1EB": "Light Cyan",

    // reds
    "E11F26": "Red 50",

    // blues
    "007AFF": "Blue Light",
    "dbeffa": "Blue 90",
    "0062CC": "Blue 80",
    "004999": "Blue 60",
    "003166": "Blue 40",
    "001833": "Blue 20",
    "0A84FF": "Blue Dark",
    
    // cyans
    "32ADE6": "Cyan Light",
    "2C99CC": "Cyan 80",
    "217399": "Cyan 60",
    "164D66": "Cyan 40",
    "0B2633": "Cyan 20",
    "64D2FF": "CyanDark",
    
    // greens
    "34C759": "Green Light",
    "35CC5B": "Green 80",
    "289944": "Green 60",
    "53C18A": "Green 50",
    "1B662E": "Green 40",
    "144D22": "Green 20",
    "30D158": "Green Dark",

    // oranges
    "FF3B30": "Orange Light",
    "CC372E": "Orange 80",
    "992923": "Orange 60",
    "F2826A": "Orange 50",
    "661C17": "Orange 40",
    "330E0C": "Orange 20",
    "3E0500": "Orange 10",
    "FF453A": "Orange Dark",
    
    // purples
    "AC52DE": "Purple Light",
    "9E4BCC": "Purple 80",
    "773999": "Purple 60",
    "4F2666": "Purple 40",
    "281333": "Purple 20",
    "BF5AF2": "Purple Dark",
    
    // yellows
    "FFCC00": "Yellow Light",
    "CCA300": "Yellow 80",
    "997A00": "Yellow 60",
    "F6D31F": "Yellow 50",
    "665200": "Yellow 40",
    "332900": "Yellow 20",
    "221B00": "Yellow 10",
    "FFD60A": "Yellow Dark",

    // greys
    "0C0E11": "Grey 4",
    "1C1C1E": "Grey 10",
    "2C2C2E": "Grey 20",
    "38383A": "Grey 24",
    "3A3A3C": "Grey 30",
    "3C3C43": "Grey 32",
    "616161": "Grey 38",
    "48484A": "Grey 40",
    "545458": "Grey 42",
    "5C5C5C": "Grey 43",
    "636366": "Grey 50",
    "787880": "Grey 52",
    "767680": "Grey 54",
    "747480": "Grey 56",
    "8E8E93": "Grey 60",
    "AEAEB2": "Grey 70",
    "C4C4C4": "Grey 77",
    "C7C7CC": "Grey 80",
    "C7C7C8": "Grey 82",
    "D6D6D6": "Grey 84",
    "D1D1D6": "Grey 90",
    "EBEBF5": "Grey 92",
    "E3E3EF": "Grey 94",
    "E5E5EA": "Grey 95",
    "F2F4F5": "Grey 98",
    "F2F2F7": "Grey 99",

    // depricated
    "B5B5B5": "Off Light Grey",
    "525E66": "Off MidGrey",
    "31383D": "Off Dark Grey",
    "98d5e5": "Information Blue",
    "C6C6C8": "Opaque Separator Light",
    "5856D6": "System Indigo Light",
    "5E5CE6": "System Indigo Dark",
    "FF9500": "System Orange Light",
    "FF9F0A": "System Orange Dark",
    "FF2D55": "System Pink Light",
    "FF375F": "System Pink Dark",
    "AF52DE": "System Purple Light",
    "5AC8FA": "System Teal Light",
    "FF0000": "Pure Red",
    "00FF00": "Pure Green",
    "0000FF": "Pure Blue",
    "FFFF00": "Pure Yellow",
    "00FFFF": "Pure Cyan",
    "F9F9F9": "Septenary Fill Light",
   
  ]
  

}
