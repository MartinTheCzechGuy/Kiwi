import Foundation 

struct FlightOffer: Hashable {
  let imageURL: URL?
  let destination: String
  let price: String
  let adults: Int
  let nightsInDestination: Int
  let journeyToDestionation: Route
  let journeyFromDestination: Route
  
  init(
    imageURL: URL?,
    destination: String,
    price: String,
    adults: Int,
    nightsInDestination: Int,
    journeyToDestionation: Route,
    journeyFromDestination: Route
  ) {
    self.imageURL = imageURL
    self.destination = destination
    self.price = price
    self.adults = adults
    self.nightsInDestination = nightsInDestination
    self.journeyToDestionation = journeyToDestionation
    self.journeyFromDestination = journeyFromDestination
  }
}
