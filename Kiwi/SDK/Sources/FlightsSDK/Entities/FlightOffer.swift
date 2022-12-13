import Foundation

public struct FlightOffer {
  public let cityTo: String
  public let countryToCode: String
  public let cityFrom: String
  public let departureTime: Date
  public let arrivalTime: Date
  public let price: Double
  public let currency: String
  public let adults: Int
  public let nightsInDestination: Int
  public let journeyToDestionation: Route
  public let journeyFromDestination: Route
  
  init(
    cityTo: String,
    countryToCode: String,
    cityFrom: String,
    departureTime: Date,
    arrivalTime: Date,
    price: Double,
    currency: String,
    adults: Int,
    nightsInDestination: Int,
    journeyToDestionation: Route,
    journeyFromDestination: Route
  ) {
    self.cityTo = cityTo
    self.countryToCode = countryToCode
    self.cityFrom = cityFrom
    self.departureTime = departureTime
    self.arrivalTime = arrivalTime
    self.price = price
    self.currency = currency
    self.adults = adults
    self.nightsInDestination = nightsInDestination
    self.journeyToDestionation = journeyToDestionation
    self.journeyFromDestination = journeyFromDestination
  }
}

public struct Route {
  public let from: String
  public let to: String
  public let departure: Date
  public let arrival: Date
  
  init(from: String, to: String, departure: Date, arrival: Date) {
    self.from = from
    self.to = to
    self.departure = departure
    self.arrival = arrival
  }
}
