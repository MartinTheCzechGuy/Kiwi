@testable import CoreToolkit
import Foundation
import XCTest

final class DateFormatStyleTests: XCTestCase {
  func test() {
    let date = Date(timeIntervalSince1970: 1670862676)
        
    XCTAssertEqual("12/12/2022", date.formatted(.date))
  }
}
