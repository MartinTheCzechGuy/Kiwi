import Foundation

public enum NetworkError: Error {
  case decodingError(Error)
  case networkingError(Error)
  case invalidStatusCode(URLResponse)
}
