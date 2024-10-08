//
//  File.swift
//  
//
//  Created by Dave Duprey on 09/09/2023.
//



public struct W3WScheme {
  
  public var colors: W3WColors?
  public var styles: W3WStyles?
  
  public init(colors: W3WColors? = nil, styles: W3WStyles? = nil) {
    self.colors = colors
    self.styles = styles
  }
 
  
  /// copy a color set from one set to another
  public func copy() -> W3WScheme {
    return W3WScheme(colors: W3WColors(colors: colors), styles: W3WStyles(style: styles))
  }

  
  public var description: String {
    return (colors?.description ?? "") + "\n" + (styles?.description ?? "")
  }


  public func with(colors: W3WColors?) -> W3WScheme {
    return W3WScheme(colors: colors, styles: self.styles)
  }
  
  
  public func with(styles: W3WStyles?) -> W3WScheme {
    return W3WScheme(colors: self.colors, styles: styles)
  }
  
  // colours
  
  public func with(foreground: W3WColor? = nil) -> W3WScheme { return self.with(colors: colors?.with(foreground: foreground)) }
  public func with(background: W3WColor? = nil) -> W3WScheme  { return self.with(colors: colors?.with(background: background)) }
  public func with(tint: W3WColor? = nil) -> W3WScheme         { return self.with(colors: colors?.with(tint: tint)) }
  public func with(secondary: W3WColor? = nil) -> W3WScheme      { return self.with(colors: colors?.with(secondary: secondary)) }
  public func with(brand: W3WColor? = nil) -> W3WScheme           { return self.with(colors: colors?.with(brand: brand)) }
  public func with(highlight: W3WBasicColors? = nil) -> W3WScheme { return self.with(colors: colors?.with(highlight: highlight)) }
  public func with(border: W3WColor? = nil) -> W3WScheme          { return self.with(colors: colors?.with(border: border)) }
  public func with(separator: W3WColor? = nil) -> W3WScheme      { return self.with(colors: colors?.with(separator: separator)) }
  public func with(shadow: W3WColor? = nil) -> W3WScheme        { return self.with(colors: colors?.with(shadow: shadow)) }
  public func with(placeholder: W3WColor? = nil) -> W3WScheme   { return self.with(colors: colors?.with(placeholder: placeholder)) }
  public func with(success: W3WBasicColors? = nil) -> W3WScheme { return self.with(colors: colors?.with(success: success)) }
  public func with(error: W3WBasicColors? = nil) -> W3WScheme   { return self.with(colors: colors?.with(error: error)) }
  public func with(header: W3WBasicColors? = nil) -> W3WScheme  { return self.with(colors: colors?.with(header: header)) }
  public func with(line: W3WColor? = nil) -> W3WScheme          { return self.with(colors: colors?.with(line: line)) }
  
  // styles
  
  public func with(border: W3WLineThickness?)      -> W3WScheme  { return self.with(styles: styles?.with(border: border)) }
  public func with(cornerRadius: W3WCornerRadius?) -> W3WScheme  { return self.with(styles: styles?.with(cornerRadius: cornerRadius)) }
  public func with(shadow: W3WShadow?)             -> W3WScheme  { return self.with(styles: styles?.with(shadow: shadow)) }
  public func with(fonts: W3WFonts?)                -> W3WScheme  { return self.with(styles: styles?.with(fonts: fonts)) }
  public func with(font: W3WFont?)                   -> W3WScheme  { return self.with(styles: styles?.with(font: font)) }
  public func with(textAlignment: W3WTextAlignment?)  -> W3WScheme { return self.with(styles: styles?.with(textAlignment: textAlignment)) }
  public func with(padding: W3WPadding?)              -> W3WScheme { return self.with(styles: styles?.with(padding: padding)) }
  public func with(rowHeight: W3WRowHeight?)          -> W3WScheme { return self.with(styles: styles?.with(rowHeight: rowHeight)) }
  public func with(lineThickness: W3WLineThickness?) -> W3WScheme { return self.with(styles: styles?.with(lineThickness: lineThickness)) }
  public func with(visualEffect: W3WVisualEffect?)  -> W3WScheme { return self.with(styles: styles?.with(visualEffect: visualEffect)) }

  // convenience
  
  public func with(border: W3WColor?, thickness: W3WLineThickness?) -> W3WScheme {
    return self.with(border: border).with(border: thickness)
  }
  
}
