import Combine
import Flights
import Foundation

public class FlightOffersViewModel: ObservableObject {
  
  @Published var offers: [FlightOffer] = []
  
  private let flightsClient: FlightsClient
  private var bag = Set<AnyCancellable>()
  
  public init(
    flightsClient: FlightsClient
  ) {
    self.flightsClient = flightsClient
  }
  
  func fetchOffers() {
    offers = [
      FlightOffer(
        imageURL: URL(string: "https://images.kiwi.com/photos/600x330/prague_cz.jpg")!,
        destination: "Prague",
        departureFrom: "Brno",
        departureTime: "2023-03-07 11:55 AM",
        arrivalTime: "2023-03-07 2:45 PM",
        price: 200,
        adults: 2
      ),
      FlightOffer(
        imageURL: URL(string: "https://images.kiwi.com/photos/600x330/barcelona_es.jpg")!,
        destination: "Barcelona",
        departureFrom: "Prague",
        departureTime: "2023-03-07 11:55 AM",
        arrivalTime: "2023-03-07 2:45 PM",
        price: 350,
        adults: 2
      ),
      FlightOffer(
        imageURL: URL(string: "https://images.kiwi.com/photos/600x330/madrid_es.jpg")!,
        destination: "Madrid",
        departureFrom: "Prague",
        departureTime: "2023-03-07 11:55 AM",
        arrivalTime: "2023-03-07 2:45 PM",
        price: 350,
        adults: 2
      )
    ]
    
    
//    flightsClient.search("tada")
//      .compactMap { $0 }
//      .print("😂 1")
//      .replaceError(
//        with: Flight(
//          currency: "EUR",
//          flightData: [
//            FlightData(
//              cityFrom: "Prague",
//              cityTo: "Barcelona",
//              countryFrom: .init(code: "CZ", name: "Czechia"),
//              countryTo: .init(code: "ES", name: "Espania"),
//              dTimeUTC: 1672739100,
//              aTimeUTC: 1672817700,
//              price: 200,
//              route: [
//                Route(
//                  cityFrom: "Prague",
//                  cityTo: "Barcelona",
//                  dTimeUTC: 1672739100,
//                  aTimeUTC: 1672817700
//                )
//              ]
//            )
//          ]
//        )
//      )
//      .receive(on: DispatchQueue.main)
//      .assign(to: \.flights, on: self)
//      .store(in: &bag)
  }
}
