import Foundation
@testable import FlightsSDK

extension FlightsEntity {
  static var mock: FlightsEntity {
    FlightsEntity(
      currency: "EUR",
      numOfAdults: 2,
      data: [
        FlightDataEntity(
          cityFrom: "Prague",
          cityTo: "Barcelona",
          countryFromCode: "CZ",
          countryToCode: "ES",
          departure: Date(timeIntervalSince1970: 1669895252),
          arrival: Date(timeIntervalSince1970: 1670759252),
          price: 200,
          nightsInDestination: 5,
          routes: [
            RouteEntity(
              cityFrom: "Prague",
              cityTo: "Barcelona",
              departure: Date(timeIntervalSince1970: 1669895252),
              arrival: Date(timeIntervalSince1970: 1669906052)
            ),
            RouteEntity(
              cityFrom: "Barcelona",
              cityTo: "Prague",
              departure: Date(timeIntervalSince1970: 1670748452),
              arrival: Date(timeIntervalSince1970: 1670759252)
            )
          ]
        )
      ]
    )
  }
}
