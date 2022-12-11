import Combine
import Foundation

public struct FlightsClient {
  public let search: (SearchParameters) -> AnyPublisher<Flights, FlightsError>
  public let imageURL: (FlightData) -> URL?
}
