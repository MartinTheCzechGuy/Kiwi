import Combine
import Networking
@testable import FlightsSDK
import XCTest

final class FlightsClientTests: XCTestCase {
  
  private var bag = Set<AnyCancellable>()
  
  func test_fetch_flights() {
    let response = Flights.json.data(using: .utf8)!
    
    let networkingClient = NetworkingClientMock(
      response: Just(response)
        .setFailureType(to: NetworkError.self)
        .eraseToAnyPublisher()
    )
    
    let sut = FlightsClient.live(NetworkingClient: networkingClient)
    
    let expectation = expectation(description: "data fetched")
    
    sut.search(.mock)
      .sink(
        receiveCompletion: { completion in
          switch completion {
          case .failure:
            XCTFail()
          case .finished:
            break
          }
        },
        receiveValue: { _ in
          // check attributes in here
          expectation.fulfill()
        }
      )
      .store(in: &bag)
    
    waitForExpectations(timeout: 0.01)
  }
}
