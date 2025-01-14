import XCTest
@testable import W3WSwiftThemes

final class w3w_swift_themesTests: XCTestCase {
  
  func testColourNames() throws {
    XCTAssertTrue(W3WCoreColor.clear.name.contains("Clear"))
    XCTAssertTrue(W3WCoreColor.red.name.contains("Red"))
    XCTAssertTrue(W3WCoreColor.blue.name.contains("Blue"))
  }
  
  
  @available(*, deprecated, message: "this silences the deprications warning")
  func testFonts() throws {
    let fonts = W3WFonts()
    
    XCTAssertTrue(fonts.body.pointSize == UIFont.preferredFont(forTextStyle: .body).pointSize)
  }
  
  func testTemp() throws {
    
    XCTAssertEqual(W3WTheme.standard.errorElevated?[.dark], .orangeDark)
    XCTAssertEqual(W3WTheme.what3words.fillsQuaternary?[.light], .blue90)
    
  }
  
  func testCornerRaduis() {
    let x = W3WCornerRadius.circle
    let y = W3WCornerRadius.oval
    let z = W3WCornerRadius(value: 42.0)

    XCTAssertFalse(x == y)
    XCTAssertFalse(x == z)
    XCTAssertFalse(y == z)
    XCTAssertTrue(x != y)
    XCTAssertTrue(x != z)
    XCTAssertTrue(y != z)
    XCTAssertTrue(x == x)
    XCTAssertTrue(y == y)
    XCTAssertTrue(z == z)
  }
  
  
  func testFontConstructor() {

    var font = W3WFont(name: "Courier", size: 32.0, weight: 0.0, italic: false)
    XCTAssertTrue(font.name.contains("Courier"))
    XCTAssertEqual(font.size, 32.0)
    XCTAssertEqual(font.italic, false)
    XCTAssertEqual(font.bold, false)

    var uiFont = font.uiFont
    XCTAssertTrue(uiFont.fontName.contains("Courier"))
    XCTAssertEqual(uiFont.pointSize, 32.0)
    XCTAssertTrue(!uiFont.fontDescriptor.symbolicTraits.contains(.traitBold))
    XCTAssertTrue(!uiFont.fontDescriptor.symbolicTraits.contains(.traitItalic))

    font = W3WFont(name: "Helvetica", size: 32.0, weight: 1.0, italic: true)
    XCTAssertTrue(font.name.contains("Helvetica"))
    XCTAssertEqual(font.size, 32.0)
    XCTAssertEqual(font.italic, true)
    XCTAssertEqual(font.bold, true)

    uiFont = font.uiFont
    XCTAssertTrue(uiFont.fontName.contains("Helvetica"))
    XCTAssertEqual(uiFont.pointSize, 32.0)
    XCTAssertTrue(uiFont.fontDescriptor.symbolicTraits.contains(.traitBold))
    XCTAssertTrue(uiFont.fontDescriptor.symbolicTraits.contains(.traitItalic))

    font = W3WFont.buttonCircular(theme: .standard)
    XCTAssertTrue(font.name.contains("Helvetica"))
  }
  
  
  func testFontModifiers() {
    let font = W3WFont(name: W3WTypefaces.defaultTypefaceName, size: 32.0, weight: 0.0, italic: false)
    XCTAssertTrue(font.with(weight: .bold).bold)
    XCTAssertTrue(font.with(italic: true).italic)
    XCTAssertTrue(font.with(size: 24.0).size == 24.0)
    XCTAssertTrue(font.with(italic: false).italic == false)

    let font2 = W3WFont(name: "Courier", size: 32.0, weight: 0.0, italic: false)
    XCTAssertTrue(font2.with(weight: .bold).bold)
    XCTAssertTrue(font2.with(italic: true).italic)
    XCTAssertTrue(font2.with(size: 24.0).size == 24.0)
    XCTAssertTrue(font2.with(italic: false).italic == false)
  }
  
  
  func testTypefaces() {
    let typefaces = W3WTypefaces()
    
    XCTAssertEqual(typefaces.largeTitle.size, W3WFontSizes().largeTitle)
    XCTAssertEqual(typefaces.title1.size, W3WFontSizes().title1)
    XCTAssertEqual(typefaces.title2.size, W3WFontSizes().title2)
    XCTAssertEqual(typefaces.title3.size, W3WFontSizes().title3)
    XCTAssertEqual(typefaces.headline.size, W3WFontSizes().headline)
    XCTAssertEqual(typefaces.body.size, W3WFontSizes().body)
    XCTAssertEqual(typefaces.callout.size, W3WFontSizes().callout)
    XCTAssertEqual(typefaces.subheadline.size, W3WFontSizes().subheadline)
    XCTAssertEqual(typefaces.footnote.size, W3WFontSizes().footnote)
    XCTAssertEqual(typefaces.caption1.size, W3WFontSizes().caption1)
    XCTAssertEqual(typefaces.caption2.size, W3WFontSizes().caption2)
    
    XCTAssertTrue(W3WTypefaces.defaultTypefaceName.contains("AppleSystemUIFont"))
  }
  
  
  func testFontWeight() {
    
    // neutral weight
    XCTAssertEqual(W3WFont(name: "Helvetica", size: 32.0, weight: .none).weight, 0.0)
    XCTAssertEqual(W3WFont(name: "Helvetica", size: 32.0, weight: .regular).weight, 0.0)

    // bold are more than 0.0
    XCTAssertGreaterThan(W3WFont(name: "Helvetica", size: 32.0, weight: .black).weight, 0.0)
    XCTAssertGreaterThan(W3WFont(name: "Helvetica", size: 32.0, weight: .bold).weight, 0.0)
    XCTAssertGreaterThan(W3WFont(name: "Helvetica", size: 32.0, weight: .heavy).weight, 0.0)
    XCTAssertGreaterThan(W3WFont(name: "Helvetica", size: 32.0, weight: .medium).weight, 0.0)
    XCTAssertGreaterThan(W3WFont(name: "Helvetica", size: 32.0, weight: .semibold).weight, 0.0)

    // light are less than 0.0
    XCTAssertLessThan(W3WFont(name: "Helvetica", size: 32.0, weight: .light).weight, 0.0)
    XCTAssertLessThan(W3WFont(name: "Helvetica", size: 32.0, weight: .thin).weight, 0.0)
    XCTAssertLessThan(W3WFont(name: "Helvetica", size: 32.0, weight: .ultralight).weight, 0.0)
  }
  
  
  func testImageSource() {
    var imageSource = [W3WColorMode: W3WImageSource]()

    imageSource[.light] = .system("x")
    imageSource[.dark] = .system("y")
  }
  
  
}
