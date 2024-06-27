import XCTest
@testable import W3WSwiftThemes

final class w3w_swift_themesTests: XCTestCase {
  
  func testColourNames() throws {
    XCTAssertTrue(W3WCoreColor.clear.name.contains("Clear"))
    XCTAssertTrue(W3WCoreColor.red.name.contains("Red"))
    XCTAssertTrue(W3WCoreColor.blue.name.contains("Blue"))
  }
  
  
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
  
  
}
