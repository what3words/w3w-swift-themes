//
//  File.swift
//  
//
//  Created by Dave Duprey on 04/07/2024.
//

import CoreGraphics

#if canImport(UIKit)
import UIKit

struct W3WFontSizes {
  var largeTitle: CGFloat = UIFont.preferredFont(forTextStyle: .largeTitle).pointSize
  var title1:    CGFloat = UIFont.preferredFont(forTextStyle: .title1).pointSize
  var title2:   CGFloat = UIFont.preferredFont(forTextStyle: .title2).pointSize
  var title3:   CGFloat = UIFont.preferredFont(forTextStyle: .title3).pointSize
  var headline: CGFloat = UIFont.preferredFont(forTextStyle: .headline).pointSize
  var body:      CGFloat = UIFont.preferredFont(forTextStyle: .body).pointSize
  var callout:    CGFloat = UIFont.preferredFont(forTextStyle: .callout).pointSize
  var subheadline: CGFloat = UIFont.preferredFont(forTextStyle: .subheadline).pointSize
  var footnote:    CGFloat = UIFont.preferredFont(forTextStyle: .footnote).pointSize
  var caption1:   CGFloat = UIFont.preferredFont(forTextStyle: .caption1).pointSize
  var caption2:  CGFloat = UIFont.preferredFont(forTextStyle: .caption2).pointSize
}

#else

struct W3WFontSizes {
  var largeTitle: CGFloat = 34.0
  var title1:    CGFloat = 28.0
  var title2:   CGFloat = 22.0
  var title3:   CGFloat = 20.0
  var headline: CGFloat = 34.0
  var body:      CGFloat = 17.0
  var callout:    CGFloat = 16.0
  var subheadline: CGFloat = 15.0
  var footnote:    CGFloat = 13.0
  var caption1:   CGFloat = 12.0
  var caption2:  CGFloat = 11.0
}
#endif
