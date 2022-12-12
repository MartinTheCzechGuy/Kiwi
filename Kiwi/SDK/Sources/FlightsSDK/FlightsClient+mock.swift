#if DEBUG
import Combine
import Foundation

public extension FlightsClient {
  static func mock(
    search: @escaping (SearchParameters) -> AnyPublisher<Flights, FlightsError> = { _ in fatalError("\(Self.self).search unimplemented") },
    imageURL: @escaping (FlightData) -> URL? = { _ in fatalError("\(Self.self).imageURL unimplemented") }
  ) -> FlightsClient {
    FlightsClient(
      search: search,
      imageURL: imageURL
    )
  }
}
#endif
