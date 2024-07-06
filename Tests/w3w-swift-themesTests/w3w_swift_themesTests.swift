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
  
  
  func testFont() {
    
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

    //if #available(iOS 13.0, *) {
    //  let suFont = font.suFont
    //  print("SuFont", suFont)
    //}
    
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
    
    var x: W3WFontWeight = 12.5
    let y: W3WFontWeight = 37.5
    
    x = 42.0
    
  }
  
}
