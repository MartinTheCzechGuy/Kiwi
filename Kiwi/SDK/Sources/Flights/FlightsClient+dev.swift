import Combine
import Foundation

public extension FlightsClient {
  static func dev() -> FlightsClient {
    FlightsClient(
      search: { _ in
        Just(
          Flights(
            currency: "EUR",
            numOfAdults: 2,
            data: [
              FlightData(
                cityFrom: "Prague",
                cityTo: "Barcelona",
                countryFromCode: "CZ",
                countryToCode: "ES",
                departure: Date(timeIntervalSince1970: 1669895252),
                arrival: Date(timeIntervalSince1970: 1670759252),
                price: 200,
                nightsInDestination: 5,
                routes: [
                  Route(
                    cityFrom: "Prague",
                    cityTo: "Barcelona",
                    departure: Date(timeIntervalSince1970: 1669895252),
                    arrival: Date(timeIntervalSince1970: 1669906052)
                  ),
                  Route(
                    cityFrom: "Barcelona",
                    cityTo: "Prague",
                    departure: Date(timeIntervalSince1970: 1670748452),
                    arrival: Date(timeIntervalSince1970: 1670759252)
                  )
                ]
              )
            ]
          )
        )
        .setFailureType(to: FlightsError.self)
        .eraseToAnyPublisher()
      },
      imageURL: { _ in
        URL(string: "https://images.kiwi.com/photos/600x330/prague_cz.jpg")!
      }
    )
  }
}
