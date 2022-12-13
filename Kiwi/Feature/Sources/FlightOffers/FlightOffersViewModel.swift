import Combine
import CoreToolkit
import FlightsSDK
import Foundation
import Loading

public class FlightOffersViewModel: ObservableObject {
  
  @Published var offers: LoadingState<[FlightOffer], FlightsError> = .loading
  
  private let flightsClient: FlightsClient
  private var bag = Set<AnyCancellable>()
  
  private let searchParameters: SearchParameters
  
  public init(
    flightsClient: FlightsClient
  ) {
    self.flightsClient = flightsClient
    
    // This would not be here at all in real app, instead there would be some @Published properties and the SearchParameter would be atleast co created by the user based on his/her input
    let today = Date.now
    let earlierReturnDate = today.addDays(numOfDays: 20) ?? today + (60*60*24*20)
    let laterReturnDate = today.addDays(numOfDays: 30) ?? today + (60*60*24*30)
    
    let formatter = DateFormatter.shortenedISO8601Formatter
    
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
      returnDepartureBefore: formatter.string(from: laterReturnDate),
      returnDepartureAfter: formatter.string(from: earlierReturnDate),
      returnFromDifferentAirport: false,
      minNights: 3,
      maxNights: 7
    )
  }
    
  func fetchOffers() {
    flightsClient.search(searchParameters)
      .map { [weak self] externalArray in
        externalArray.map { externalOffer in
          FlightOffers.FlightOffer(
            imageURL: self?.flightsClient.imageURL(cityTo: externalOffer.cityTo, countryToCode: externalOffer.countryToCode),
            destination: externalOffer.cityTo,
            price: externalOffer.price.formatted(.currency(code: externalOffer.currency)),
            adults: externalOffer.adults,
            nightsInDestination: externalOffer.nightsInDestination,
            journeyToDestionation: Route(
              from: externalOffer.journeyToDestionation.from,
              to: externalOffer.journeyToDestionation.to,
              departure: externalOffer.journeyToDestionation.departure,
              arrival: externalOffer.journeyToDestionation.arrival
            ),
            journeyFromDestination: Route(
              from: externalOffer.journeyFromDestination.from,
              to: externalOffer.journeyFromDestination.to,
              departure: externalOffer.journeyFromDestination.departure,
              arrival: externalOffer.journeyFromDestination.arrival
            )
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
