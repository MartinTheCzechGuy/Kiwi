import Combine
import Foundation
import Networking

public extension FlightsClient {
  static func live(
    NetworkingClient: NetworkingClientType
  ) -> FlightsClient {
    FlightsClient(
      search: { parameters in
        currentFlightsRequest(parameters: parameters)
          .publisher
          .flatMap {
            NetworkingClient.request(URLRequest(url: $0))
              .mapError(FlightsError.networkingError)
          }
          .eraseToAnyPublisher()
      },
      imageURL: { flightData in
        URL(string: "https://images.kiwi.com/photos/600x330/\(flightData.cityTo.lowercased())_\(flightData.countryToCode.lowercased()).jpg")
      }
    )
  }
  
  static func currentFlightsRequest(parameters searchParams: SearchParameters) -> Result<URL, FlightsError> {
    var components = URLComponents()
    components.scheme = "https"
    components.host = "api.skypicker.com"
    components.path = "/flights"
    
    components.queryItems = searchParams.encodeToQueryParameters()
    
    guard let url = components.url else {
      return .failure(.urlRequestError)
    }
    
    return .success(url)
  }
}
