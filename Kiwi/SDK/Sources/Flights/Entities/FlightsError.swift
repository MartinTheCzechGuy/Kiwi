import Foundation

public enum FlightsError: Error {
  case urlRequestError
  case invalidStatusCode(URLResponse)
  case networkingError(Error)
  case decodingError(Error)
}
