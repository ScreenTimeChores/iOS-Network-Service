import NetworkService
import XCTest

extension NetworkError: CaseIterable, Equatable {
    public static func == (lhs: NetworkError, rhs: NetworkError) -> Bool {
        lhs.errorDescription == rhs.errorDescription && lhs.failureReason == rhs.failureReason && lhs.localizedDescription == rhs.localizedDescription
    }

    public static var allCases: [NetworkError] {
        return [
            .badRequest,
            .badResponse,
            .authenticationError,
            .clientError,
            .serverError,
            .resourceTimeout,
            .unknownError,
            .custom("test")
        ]
    }
}
