import Combine
import Foundation

public extension FlightsClient {
  static func live() -> FlightsClient {
    FlightsClient(
      search: { _ in
        // YYYY-MM-DDThh:mm
        let searchParams = FlightsSearch(
          partner: "skypicker",
          partnerMarket: "cs",
          flyFrom: "Prague",
          destination: "Barcelona",
          departure: "2022-12-10T10:10",
          arrival: "2022-12-14T10:10",
          nights: 3,
          cabinType: .economy,
          children: 0,
          adults: 2,
          priceFrom: 50,
          priceTo: 500,
          currency: "EUR",
          locale: "cs",
          limit: 20
        )
        
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.skypicker.com"
        components.path = "/flights"
        
        components.queryItems = [
          URLQueryItem(name: "partner", value: "skypicker"),
          URLQueryItem(name: "fly_from", value: "prague_cz"),
          URLQueryItem(name: "fly_to", value: "barcelona_es"),
          
        ]
        
        return URLSession.shared.dataTaskPublisher(for: components.url!)
          .map(\.data)
          .mapError { _ in FlightsError.urlRequestError }
          .decode(type: Flight.self, decoder: JSONDecoder())
          .mapError { _ in FlightsError.urlRequestError }
          .print("😂 po decode")
          .eraseToAnyPublisher()
      }
    )
  }
}
