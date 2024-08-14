import NetworkService
import XCTest

final class HTTPMethodTests: XCTestCase {
    func testExpectedHTTPMethodsEqualToIncludedInAllCases() {
        // Given
        let currentHTTPMethods = Set(HTTPMethod.allCases)
        let expectedHTTPMethods: Set<HTTPMethod> = [
            .get,
            .post,
            .put,
            .delete
        ]

        // When // Then
        XCTAssertEqual(currentHTTPMethods, expectedHTTPMethods)
    }

    func testAllCasesReturnExpectedRawValue() {
        XCTAssertEqual(HTTPMethod.get.rawValue, "GET")
        XCTAssertEqual(HTTPMethod.post.rawValue, "POST")
        XCTAssertEqual(HTTPMethod.put.rawValue, "PUT")
        XCTAssertEqual(HTTPMethod.delete.rawValue, "DELETE")
    }
}
