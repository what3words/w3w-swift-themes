//
//  W3WDynamicColorImage.swift
//  
//
//  Created by Thy Nguyen on 27/03/2024.
//

import UIKit

/// stores an image for each colour mode, such as "light mode" and "dark mode"
public class W3WColorModeImage: W3WImage {
  
  /// the collection of related colours
  public let images: [W3WColorMode: W3WImage]
  
  
  /// initialize with a dictionary of colour mode and related image
  public init(images: [W3WColorMode: W3WImage]) {
    self.images = images
    super.init(file: "", colors: .emptyColorSet)
  }
  
  
  /// set the light and dark mode images
  public init(light: W3WImage, dark: W3WImage) {
    self.images = [.light: light, .dark: dark]
    super.init(file: "", colors: .emptyColorSet)
  }
  
  
  /// use the same image for all colour modes
  public init(all: W3WImage) {
    self.images = [.light: all, .dark: all]
    super.init(file: "", colors: .emptyColorSet)
  }
  
  
  /// return the image for current color mode
  public override func get() -> UIImage {
    return images[W3WColor.theme]?.get() ?? UIImage()
  }
}
