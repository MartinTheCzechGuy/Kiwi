import Foundation

struct FlightOffer: Hashable {
  let imageURL: URL?
  let destination: String
  let departureFrom: String
  let departureTime: String
  let arrivalTime: String
  let price: String
  let adults: Int
  let nightsInDestination: Int
  let journeyToDestionation: Route
  let journeyFromDestination: Route
}

struct Route: Hashable {
  let from: String
  let to: String
  let departure: Date
  let arrival: Date
}
