#if DEBUG
import Combine

public extension FlightsClient {
  static func mock(
    search: @escaping (String) -> AnyPublisher<Flight, FlightsError> = { _ in fatalError("\(Self.self).search unimplemented") }
  ) -> FlightsClient {
    FlightsClient(
      search: search
    )
  }
}
#endif
