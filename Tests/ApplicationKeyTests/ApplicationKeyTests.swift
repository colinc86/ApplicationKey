import XCTest
@testable import ApplicationKey

final class ApplicationKeyTests: XCTestCase {
  
  let key = "test"
  let bundleIdentifier = "com.apple.dt.xctest.tool"
  
  func testNoKeyAndNoBundle() {
    XCTAssertEqual(
      ApplicationKey(from: "", in: Bundle()),
      ""
    )
  }
  
  func testKeyAndNoBundle() {
    XCTAssertEqual(
      ApplicationKey(from: key, in: Bundle()),
      key
    )
  }
  
  func testNoKeyAndBundle() {
    XCTAssertEqual(
      ApplicationKey(from: "", in: Bundle.main),
      bundleIdentifier
    )
  }
  
  func testKeyAndBundle() {
    XCTAssertEqual(
      ApplicationKey(from: key, in: Bundle.main),
      bundleIdentifier + "." + key
    )
  }
  
  func testKeyAndMainBundle() {
    XCTAssertEqual(
      ApplicationKey(from: key),
      bundleIdentifier + "." + key
    )
  }
  
}
