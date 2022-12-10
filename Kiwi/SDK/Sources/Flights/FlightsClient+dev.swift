import Combine

public extension FlightsClient {
  static func dev() -> FlightsClient {
    FlightsClient(
      search: { _ in
        Just(
          Flight(
            currency: "EUR",
            flightData: [
              FlightData(
                cityFrom: "Prague",
                cityTo: "Barcelona",
                countryFrom: .init(code: "CZ", name: "Czechia"),
                countryTo: .init(code: "ES", name: "Espania"),
                dTimeUTC: 1672739100,
                aTimeUTC: 1672817700,
                price: 200,
                route: [
                  Route(
                    cityFrom: "Prague",
                    cityTo: "Barcelona",
                    dTimeUTC: 1672739100,
                    aTimeUTC: 1672817700
                  )
                ]
              )
            ]
          )
        )
        .setFailureType(to: FlightsError.self)
        .eraseToAnyPublisher()
      }
    )
  }
}
