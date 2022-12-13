#if DEBUG
import Combine
import Foundation

public extension FlightsClient {
  static func mock(
    search: @escaping (SearchParameters) -> AnyPublisher<[FlightOffer], FlightsError> = { _ in fatalError("\(Self.self).search unimplemented") },
    imageURL: @escaping (String, String) -> URL? = { _, _ in fatalError("\(Self.self).imageURL unimplemented") }
  ) -> FlightsClient {
    FlightsClient(
      search: search,
      imageURL: imageURL
    )
  }
}
#endif
