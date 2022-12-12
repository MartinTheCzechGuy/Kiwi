import Combine
import Foundation
import Networking

struct NetworkingClientMock: NetworkingClientType {
  private let response: AnyPublisher<Data, NetworkError>
  
  init(response: AnyPublisher<Data, NetworkError>) {
    self.response = response
  }
  
  func request(_ urlRequest: URLRequest) -> AnyPublisher<Data, NetworkError> {
    response
  }
}
