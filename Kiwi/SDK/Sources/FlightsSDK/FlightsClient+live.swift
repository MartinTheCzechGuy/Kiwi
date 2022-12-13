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
            NetworkingClient.request(
              URLRequest(url: $0),
              ofResponseType: FlightsEntity.self
            )
            .mapError(FlightsError.networkingError)
          }
          .flatMap { flightsEntity -> AnyPublisher<[FlightOffer], FlightsError> in
            // All of the mapping should be in a separate object, so that it can be tested easily
            let result = flightsEntity.data.compactMap { flightData -> FlightOffer? in
              let journeyToDestination = flightData.routes
                .first(where: { route in route.cityFrom == flightData.cityFrom })
                .map { routeToDestionation in
                  Route(
                    from: routeToDestionation.cityFrom,
                    to: routeToDestionation.cityTo,
                    departure: routeToDestionation.departure,
                    arrival: routeToDestionation.arrival
                  )
                }
              
              let journeyFromDestination = flightData.routes
                .first(where: { route in route.cityFrom == flightData.cityTo })
                .map { routeHome in
                  Route(
                    from: routeHome.cityFrom,
                    to: routeHome.cityTo,
                    departure: routeHome.departure,
                    arrival: routeHome.arrival
                  )
                }
              
              guard let toDestination = journeyToDestination, let fromDestination = journeyFromDestination else {
                return nil
              }
                            
              return FlightOffer(
                cityTo: flightData.cityTo,
                countryToCode: flightData.countryToCode,
                cityFrom: flightData.cityFrom,
                departureTime: flightData.departure,
                arrivalTime: flightData.arrival,
                price: flightData.price,
                currency: flightsEntity.currency,
                adults: flightsEntity.numOfAdults,
                nightsInDestination: flightData.nightsInDestination,
                journeyToDestionation: toDestination,
                journeyFromDestination: fromDestination
              )
            }
            
            guard result.count == flightsEntity.data.count else {
              return Fail<[FlightOffer], FlightsError>(error: .modelConversionError).eraseToAnyPublisher()
            }
            
            return Just(result).setFailureType(to: FlightsError.self).eraseToAnyPublisher()
          }
          .eraseToAnyPublisher()
      },
      imageURL: { cityTo, countryToCode in
        let foldedCityName = cityTo.lowercased().folding(options: .diacriticInsensitive, locale: .init(identifier: "en_GB"))
        
        return URL(string: "https://images.kiwi.com/photos/600x330/\(foldedCityName)_\(countryToCode.lowercased()).jpg")
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
