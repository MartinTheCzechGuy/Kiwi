import Combine
import Foundation

public struct FlightsClient {
  public let search: (SearchParameters) -> AnyPublisher<[FlightOffer], FlightsError>
  public let imageURL: (String, String) -> URL?
}

public extension FlightsClient {
  func imageURL(cityTo: String, countryToCode: String) -> URL? {
    imageURL(cityTo, countryToCode)
  }
}
