import Combine

public struct FlightsClient {
  public let search: (String) -> AnyPublisher<Flight, FlightsError>
}
