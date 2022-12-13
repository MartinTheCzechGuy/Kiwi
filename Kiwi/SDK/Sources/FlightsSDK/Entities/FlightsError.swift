import Foundation

public enum FlightsError: Error {
  case urlRequestError
  case networkingError(Error)
  case modelConversionError
}
