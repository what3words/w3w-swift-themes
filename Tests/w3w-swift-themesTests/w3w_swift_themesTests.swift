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
    
    XCTAssertEqual(W3WScheme.standard.colors?.errorElevated?[.dark], .orangeDark)
    XCTAssertEqual(W3WScheme.w3w.colors?.fillsQuaternary?[.light],   .blue90)
    
    XCTAssertEqual(W3WScheme.w3w.styles?.borders.small,      .threePoint)
    XCTAssertEqual(W3WScheme.standard.styles?.corners.small, .small)
    
    print(W3WScheme.standard.styles?.visualEffects?.thick ?? "")
    
  }
  
}
