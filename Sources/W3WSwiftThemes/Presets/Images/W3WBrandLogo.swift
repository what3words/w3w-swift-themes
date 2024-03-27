//
//  W3WBrandLogo.swift
//  
//
//  Created by Thy Nguyen on 27/03/2024.
//

import UIKit

public final class W3WBrandLogo: W3WImage {
  public init() {
    super.init(file: "", colors: .emptyColorSet)
  }
  
  public override func from(file: String, size: CGSize) -> UIImage {
    let fileName: String
    switch W3WColor.theme {
    case .light:
      fileName = "w3wLogoWithDarkText"
    case .dark:
      fileName = "w3wLogoWithLightText"
    }
    return super.from(file: fileName, size: size)
  }
}
