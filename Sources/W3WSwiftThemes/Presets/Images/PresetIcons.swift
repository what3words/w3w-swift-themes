//
//  File.swift
//  
//
//  Created by Dave Duprey on 09/05/2023.
//


public extension W3WImage {
  
  // NOTE: These are set into closures with return statements so that they produce a new instance on every access
  
  static let info             = { return W3WImage(file: "info", colors: .standardIcons) }()
  static let pin              = { return W3WImage(file: "roundedPin", colors: .standardIcons) }()
  static let pinFill          = { return W3WImage(file: "roundedPinFill", colors: .standardIcons) }()
  static let pinWhite         = { return W3WImage(file: "roundedPin", colors: .standardIcons) }()
  static let pinFillWhite     = { return W3WImage(file: "roundedPinFill", colors: .standardIcons) }()
  static let pins             = { return W3WImage(file: "roundedPins", colors: .standardIcons) }()
  static let sea              = { return W3WImage(file: "sea", colors: .standardIcons) }()
  static let tickCircle       = { return W3WImage(file: "tickCircle", colors: .standardIcons) }()
  static let close            = { return W3WImage(file: "close", colors: .standardIcons) }()

  static let scan             = { return W3WImage(drawing: .ocr, colors: .standardIcons) }()
  static let slashes          = { return W3WImage(drawing: .makeSlashes(), colors: .standardIcons) }()
  static let mic              = { return W3WImage(drawing: .micWithSlashes, colors: .standardIcons) }()
  static let micFilled        = { return W3WImage(drawing: .micFilledWithSlashes, colors: .standardIcons) }()
  static let micBlack         = { return W3WImage(drawing: .micWithSlashes, colors: .standardIcons) }()
  static let micFilledBlack   = { return W3WImage(drawing: .micFilledWithSlashes, colors: .standardIcons) }()
  static let micRed           = { return W3WImage(drawing: .micWithSlashes, colors: .standardIcons) }()
  static let micFilledRed     = { return W3WImage(drawing: .micFilledWithSlashes, colors: .standardIcons.with(brand: .w3wBrandBase)) }()

  static let arrowLeft        = { return W3WImage(systemName: "arrow.left", colors: .standardIcons) }()
  static let accessibilityFill = { return W3WImage(systemName: "accessibility.fill", colors: .standardIcons) }()
  static let badgeFill          = { return W3WImage(systemName: "app.badge.fill", colors: .standardIcons) }()
  static let arrowRight          = { return W3WImage(systemName: "arrow.right", colors: .standardIcons) }()
  static let checkmark           = { return W3WImage(systemName: "checkmark", colors: .standardIcons) }()
  static let circle              = { return W3WImage(systemName: "circle", colors: .standardIcons) }()
  static let checkmarkCircle     = { return W3WImage(systemName: "checkmark.circle", colors: .standardIcons) }()
  static let checkmarkCircleFill = { return W3WImage(systemName: "checkmark.circle.fill", colors: .standardIcons) }()
  static let ellipsisCircleFill  = { return W3WImage(systemName: "ellipsis.circle", colors: .standardIcons) }()
  static let gearshape            = { return W3WImage(systemName: "gearshape", colors: .standardIcons) }()
  static let gearshapeFill          = { return W3WImage(systemName: "gearshape.fill", colors: .standardIcons) }()
  static let globe                    = { return W3WImage(systemName: "globe", colors: .standardIcons) }()
  static let infoCircle                 = { return W3WImage(systemName: "info.circle", colors: .standardIcons) }()
  static let keyboard                     = { return W3WImage(systemName: "keyboard", colors: .standardIcons) }()
  static let line3HorizontalDecreaseCircle = { return W3WImage(systemName: "line.3.horizontal.decrease.circle", colors: .standardIcons) }()
  static let magnifyingglass               = { return W3WImage(systemName: "magnifyingglass", colors: .standardIcons) }()
  static let speakerWave2Fill             = { return W3WImage(systemName: "speaker.wave.2.fill", colors: .standardIcons) }()
  static let squareDashed               = { return W3WImage(systemName: "square.dashed", colors: .standardIcons) }()
  static let squareAndPencil          = { return W3WImage(systemName: "square.and.pencil", colors: .standardIcons) }()
  static let xmark                  = { return W3WImage(systemName: "xmark", colors: .standardIcons) }()
  static let playFill             = { return W3WImage(systemName: "play.fill", colors: .standardIcons) }()
  static let docOnDoc            = { return W3WImage(systemName: "doc.on.doc", colors: .standardIcons) }()

  @available(*, deprecated)
  static let warning          = { return W3WImage(systemName: "exclamationmark.triangle", colors: .standardIcons) }()
  @available(*, deprecated)
  static let chevronBackward  = { return W3WImage(systemName: "chevron.backward", colors: .standardIcons) }()
  @available(*, deprecated)
  static let chevronRight     = { return W3WImage(systemName: "chevron.right", colors: .standardIcons) }()
  @available(*, deprecated)
  static let ellipsisCircle   = { return W3WImage(systemName: "ellipsis.circle", colors: .standardIcons) }()
  @available(*, deprecated)
  static let micSystem        = { return W3WImage(systemName: "mic", colors: .standardIcons) }()
  @available(*, deprecated)
  static let plus             = { return W3WImage(systemName: "plus", colors: .standardIcons) }()
  @available(*, deprecated)
  static let rays             = { return W3WImage(systemName: "rays", colors: .standardIcons) }()
  @available(*, deprecated)
  static let speakerWave3Fill = { return W3WImage(systemName: "speaker.wave.3.fill", colors: .standardIcons) }()
  @available(*, deprecated)
  static let xmarkCircle      = { return W3WImage(systemName: "xmark.circle", colors: .standardIcons) }()

}
