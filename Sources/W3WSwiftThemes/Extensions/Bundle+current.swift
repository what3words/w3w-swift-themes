//
//  Bundle+module.swift
//  
//
//  Created by Thy Nguyen on 23/01/2024.
//

import Foundation

extension Bundle {
  static let current: Bundle = {
#if DEBUG
    return Bundle(for: BundleFinder.self)
#else
    return Bundle.module
#endif
  }()
  
  private final class BundleFinder {}
}
