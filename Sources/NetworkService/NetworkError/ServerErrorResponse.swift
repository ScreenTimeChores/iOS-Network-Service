import Foundation

// Define a struct to match the expected error response from the backend
struct ServerErrorResponse: Codable {
    let error: String
}
