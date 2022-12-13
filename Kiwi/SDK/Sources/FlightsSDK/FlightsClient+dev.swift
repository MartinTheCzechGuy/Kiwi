import Combine
import Foundation

public extension FlightsClient {
  static func dev() -> FlightsClient {
    FlightsClient(
      search: { _ in
        Just(
          [
            FlightOffer(
              cityTo: "Prague",
              countryToCode: "CZ",
              cityFrom: "Brno",
              departureTime: Date(timeIntervalSince1970: 1678176300),
              arrivalTime: Date(timeIntervalSince1970: 1678867500),
              price: 200,
              currency: "EUR",
              adults: 2,
              nightsInDestination: 5,
              journeyToDestionation: Route(
                from: "Brno",
                to: "Prague",
                departure: .now,
                arrival: .now
              ),
              journeyFromDestination: Route(
                from: "Prague",
                to: "Brno",
                departure: .now,
                arrival: .now
              )
            ),
            FlightOffer(
              cityTo: "Prague",
              countryToCode: "CZ",
              cityFrom: "Brno",
              departureTime: Date(timeIntervalSince1970: 1678176300),
              arrivalTime: Date(timeIntervalSince1970: 1678867500),
              price: 200,
              currency: "EUR",
              adults: 2,
              nightsInDestination: 5,
              journeyToDestionation: Route(
                from: "Brno",
                to: "Prague",
                departure: .now,
                arrival: .now
              ),
              journeyFromDestination: Route(
                from: "Prague",
                to: "Brno",
                departure: .now,
                arrival: .now
              )
            ),
            FlightOffer(
              cityTo: "Prague",
              countryToCode: "CZ",
              cityFrom: "Brno",
              departureTime: Date(timeIntervalSince1970: 1678176300),
              arrivalTime: Date(timeIntervalSince1970: 1678867500),
              price: 200,
              currency: "EUR",
              adults: 2,
              nightsInDestination: 5,
              journeyToDestionation: Route(
                from: "Brno",
                to: "Prague",
                departure: .now,
                arrival: .now
              ),
              journeyFromDestination: Route(
                from: "Prague",
                to: "Brno",
                departure: .now,
                arrival: .now
              )
            )
          ]
        )
        .setFailureType(to: FlightsError.self)
        .eraseToAnyPublisher()
      },
      imageURL: { _, _ in
        URL(string: "https://images.kiwi.com/photos/600x330/prague_cz.jpg")!
      }
    )
  }
}
