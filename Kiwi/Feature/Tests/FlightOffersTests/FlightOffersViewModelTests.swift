import Combine
@testable import FlightOffers
import FlightsSDK
import XCTest

final class FlightOffersViewModelTests: XCTestCase {
  
  private var bag = Set<AnyCancellable>()
  
  func test_fetch_handle_error_while_fetching_flights() {
    let client = FlightsClient.mock(
      search: { _ in
        Fail(error: FlightsError.urlRequestError)
          .eraseToAnyPublisher()
      }
    )
    
    let sut = FlightOffersViewModel(flightsClient: client)
    
    let expectation1 = expectation(description: "Should receive loading")
    let expectation2 = expectation(description: "Should receive failed")
    
    sut.$offers
      // drop the initial value
      .dropFirst(1)
      .sink(
        receiveValue: { loadingState in
          print("received \(loadingState)")
          switch loadingState {
          case .loading:
            expectation1.fulfill()
          case .failed:
            expectation2.fulfill()
          default:
            XCTFail()
          }
        }
      )
      .store(in: &bag)
    
    sut.fetchOffers()
    
    waitForExpectations(timeout: 0.1)
  }
}
