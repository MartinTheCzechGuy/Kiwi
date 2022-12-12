import FlightsSDK

extension SearchParameters {
  static var mock: SearchParameters {
    SearchParameters(
      partner: "skypicker",
      partnerMarket: "cs",
      flyFrom: "prague_cz",
      departure: "2022-12-12T20:20",
      cabinType: .economy,
      children: 0,
      adults: 2,
      priceTo: 2000,
      currency: "EUR",
      locale: "en",
      limit: 5,
      maxStopOvers: 0,
      returnDepartureBefore: "2022-12-21T20:20",
      returnDepartureAfter: "2022-12-20T20:20",
      returnFromDifferentAirport: false
    )
  }
}
