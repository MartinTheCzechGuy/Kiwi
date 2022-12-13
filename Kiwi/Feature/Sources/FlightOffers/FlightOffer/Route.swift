import Foundation

struct Route: Hashable {
  let from: String
  let to: String
  let departure: Date
  let arrival: Date
  
  init(from: String, to: String, departure: Date, arrival: Date) {
    self.from = from
    self.to = to
    self.departure = departure
    self.arrival = arrival
  }
}
