import Combine
import Foundation

public protocol NetworkingClientType {
  func request(_ urlRequest: URLRequest) -> AnyPublisher<Data, NetworkError>
}

public extension NetworkingClientType {
  func request<T: Decodable>(
    _ urlRequest: URLRequest,
    jsonDecoder: JSONDecoder = JSONDecoder()
  ) -> AnyPublisher<T, NetworkError> {
    request(urlRequest)
      .flatMap {
        Just($0)
          .decode(type: T.self, decoder: jsonDecoder)
          .mapError(NetworkError.decodingError)
      }
      .eraseToAnyPublisher()
  }
  
  func request<T: Decodable>(
    _ urlRequest: URLRequest,
    jsonDecoder: JSONDecoder = JSONDecoder(),
    ofResponseType: T.Type
  ) -> AnyPublisher<T, NetworkError> {
    request(urlRequest, jsonDecoder: jsonDecoder)
  }
}


