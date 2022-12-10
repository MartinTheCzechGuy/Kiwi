import Foundation

struct FlightOffer: Hashable {
  let imageURL: URL
  let destination: String
  let departureFrom: String
  let departureTime: String
  let arrivalTime: String
  let price: Int
  let adults: Int
}
