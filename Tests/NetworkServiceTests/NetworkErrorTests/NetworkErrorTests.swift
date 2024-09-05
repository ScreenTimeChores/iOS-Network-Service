import NetworkService
import XCTest

final class NetworkErrorTests: XCTestCase {
    func testAllNetworkErrorsExistInAPI() {
        XCTAssertTrue(NetworkError.allCases.contains(.badRequest))
        XCTAssertTrue(NetworkError.allCases.contains(.badResponse))
        XCTAssertTrue(NetworkError.allCases.contains(.authenticationError))
        XCTAssertTrue(NetworkError.allCases.contains(.clientError))
        XCTAssertTrue(NetworkError.allCases.contains(.serverError))
        XCTAssertTrue(NetworkError.allCases.contains(.resourceTimeout))
        XCTAssertTrue(NetworkError.allCases.contains(.unknownError))
        XCTAssertTrue(NetworkError.allCases.contains(.custom("test")))
    }

    func testNetworkErrorConformsToErrorProtocol() {
        XCTAssertNotNil(NetworkError.self as Error.Type)
    }
}
