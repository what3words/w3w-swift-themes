//
//  File.swift
//  
//
//  Created by Dave Duprey on 06/06/2024.
//


public struct W3WBorders {
  public var none: W3WLineThickness? = W3WLineThickness.none
  public var extraSmall: W3WLineThickness? = .onePoint
  public var small:  W3WLineThickness? = .twoPoint
  public var large: W3WLineThickness? = .threePoint
  public var extraLarge:  W3WLineThickness? = .fourPoint
}


public struct W3WCorners {
  public var none:       W3WCornerRadius? = W3WCornerRadius.none
  public var extraSmall: W3WCornerRadius? = .extraSmall
  public var small:      W3WCornerRadius? = .small
  public var large:      W3WCornerRadius? = .large
  public var extraLarge: W3WCornerRadius? = .extraLarge
}


public struct W3WShadows {
  public var none:   W3WShadow? = W3WShadow.none
  public var low:    W3WShadow? = .low
  public var medium: W3WShadow? = .medium
  public var high:   W3WShadow? = .high
}

public struct W3WTextAlignments {
  public var left:      W3WTextAlignment? = .some(.init(value: .left))
  public var right:     W3WTextAlignment? = .some(.init(value: .right))
  public var centered:  W3WTextAlignment? = .some(.init(value: .center))
  public var natural:   W3WTextAlignment? = .some(.init(value: .natural))
  public var justified: W3WTextAlignment? = .some(.init(value: .justified))
}


public struct W3WPaddings {
  public var none:    W3WPadding? = W3WPadding.none
  public var single:  W3WPadding? = .single
  public var fine:    W3WPadding? = .fine
  public var thin:    W3WPadding? = .thin
  public var light:   W3WPadding? = .light
  public var medium:  W3WPadding? = .medium
  public var bold:    W3WPadding? = .bold
  public var heavy:   W3WPadding? = .heavy
}


public struct W3WSeparators {
  public var none:       W3WLineThickness? = W3WLineThickness.none
  public var extraSmall: W3WLineThickness? = .onePoint
  public var small:      W3WLineThickness? = .twoPoint
  public var large:      W3WLineThickness? = .threePoint
  public var extraLarge: W3WLineThickness? = .fourPoint
}

public struct W3WRowHeights {
  public var extraSmall: W3WRowHeight? = .extraSmall
  public var small:       W3WRowHeight? = .small
  public var medium:       W3WRowHeight? = .medium
  public var large:         W3WRowHeight? = .large
  public var extraLarge:     W3WRowHeight? = .extraLarge
  public var extraExtraLarge: W3WRowHeight? = .extraExtraLarge
}

public struct W3WLineThicknesses {
  public var none:        W3WLineThickness? = W3WLineThickness.none
  public var extraSmall:  W3WLineThickness? = .onePoint
  public var small:       W3WLineThickness? = .twoPoint
  public var large:       W3WLineThickness? = .threePoint
  public var extraLarge:  W3WLineThickness? = .fourPoint
}

public struct W3WVisualEffects {
  public var thick:      W3WVisualEffect? = W3WVisualEffect(style: .thick, fill: .fill, padding: .fine, cornerRadius: .large)
  public var regular:    W3WVisualEffect? = W3WVisualEffect(style: .regular, fill: .fill, padding: .fine, cornerRadius: .large)
  public var thin:       W3WVisualEffect? = W3WVisualEffect(style: .thin, fill: .fill, padding: .fine, cornerRadius: .large)
  public var ultrathin:  W3WVisualEffect? = W3WVisualEffect(style: .ultraThin, fill: .fill, padding: .fine, cornerRadius: .large)
}

public enum W3WButtonShape {
  case small
  case medium
  case large
  case circular
  case oval
}

public enum W3WOrdinal {
  case primary
  case secondary
  case tertiary
  case quaternary
  case quinary
  case senary
  case septenary
}
