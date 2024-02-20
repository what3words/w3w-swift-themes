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
  
}
