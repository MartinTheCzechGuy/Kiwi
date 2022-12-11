import Combine
import Foundation
import Networking

public extension FlightsClient {
  static func live() -> FlightsClient {
    FlightsClient(
      search: { parameters in
        currentFlightsRequest(parameters: parameters)
          .publisher
          .flatMap {
            URLSession.shared.dataTaskPublisher(for: $0)
              .tryMap { data, response in
                guard
                  let statusCode = (response as? HTTPURLResponse)?.statusCode,
                  case 200...299 = statusCode
                else {
                  throw FlightsError.invalidStatusCode(response)
                }
                
                return data
              }
              .mapError(FlightsError.networkingError)
          }
          .flatMap {
            Just($0)
              .decode(type: Flights.self, decoder: JSONDecoder())
              .mapError(FlightsError.decodingError)
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
