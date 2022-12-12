import Combine
import FlightsSDK
import Foundation
import Loading

public class FlightOffersViewModel: ObservableObject {
  
  @Published var offers: LoadingState<[FlightOffer], FlightsError> = .loading
  
  let bookingWebsite: URL?
  
  private let flightsClient: FlightsClient
  private var bag = Set<AnyCancellable>()
  
  // This would be mapped into a different object, that is @Published as well and somehow co-created by the user
  private let searchParameters: SearchParameters
  
  public init(
    flightsClient: FlightsClient
  ) {
    self.flightsClient = flightsClient
    self.bookingWebsite = URL(string: "https://www.kiwi.com/en/")
    
    
    // TODO: move this, search param create here or? Would not be here at all in real app
    let today = Date.now
    var dateComponents = DateComponents()
    dateComponents.day = 5
    let returnDate = Calendar.current.date(byAdding: dateComponents, to: today)!
    dateComponents.day = 7
    let returnDate2 = Calendar.current.date(byAdding: dateComponents, to: today)!
    
    let formatter = DateFormatter()
    formatter.dateFormat = "YYYY-MM-dd'T'HH:mm"
    
    self.searchParameters = SearchParameters(
      partner: "skypicker",
      partnerMarket: "cs",
      flyFrom: "prague_cz",
      departure: formatter.string(from: Date.now),
      cabinType: .economy,
      children: 0,
      adults: 2,
      priceTo: 2000,
      currency: "EUR",
      locale: "en",
      limit: 5,
      maxStopOvers: 0,
      returnDepartureBefore: formatter.string(from: returnDate2),
      returnDepartureAfter: formatter.string(from: returnDate),
      returnFromDifferentAirport: false
    )
  }
  
  func fetchOffers() {    
    flightsClient.search(searchParameters)
      .map { [weak self] (flights: Flights) -> [FlightOffer] in
        flights.data.map { (flightData: FlightData) -> FlightOffer in
          let journeyToDestination = flightData.routes
            .first(where: { route in route.cityFrom == flightData.cityFrom })
            .map { routeToDestionation in
              Route(
                from: routeToDestionation.cityFrom,
                to: routeToDestionation.cityTo,
                departure: routeToDestionation.departure,
                arrival: routeToDestionation.arrival
              )
            }
          
          let journeyFromDestination = flightData.routes
            .first(where: { route in route.cityFrom == flightData.cityTo })
            .map { routeHome in
              Route(
                from: routeHome.cityFrom,
                to: routeHome.cityTo,
                departure: routeHome.departure,
                arrival: routeHome.arrival
              )
            }
          
          return FlightOffer(
            imageURL: self?.flightsClient.imageURL(flightData),
            destination: flightData.cityTo,
            departureFrom: flightData.cityFrom,
            departureTime: flightData.departure.formatted(.dateTime),
            arrivalTime: flightData.arrival.formatted(.dateTime),
            price: flightData.price.formatted(.currency(code: flights.currency)),
            adults: flights.numOfAdults,
            nightsInDestination: flightData.nightsInDestination,
            journeyToDestionation: journeyToDestination!,
            journeyFromDestination: journeyFromDestination!
          )
        }
      }
      .loadingPublisher()
      .receive(on: DispatchQueue.main)
      .sink(
        receiveCompletion: { completion in
          return
        },
        receiveValue: { [weak self] offers in
          self?.offers = offers
        }
      )
      .store(in: &bag)
  }
}
