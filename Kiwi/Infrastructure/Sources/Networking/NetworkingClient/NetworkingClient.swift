import Combine
import Foundation

struct NetworkingClient: NetworkingClientType {
  func request(_ urlRequest: URLRequest) -> AnyPublisher<Data, NetworkError> {
    URLSession.shared.dataTaskPublisher(for: urlRequest)
      .tryMap { data, response in
        guard
          let statusCode = (response as? HTTPURLResponse)?.statusCode,
          case 200...299 = statusCode
        else {
          throw NetworkError.invalidStatusCode(response)
        }
        
        return data
      }
      .mapError(NetworkError.networkingError)
      .eraseToAnyPublisher()
  }
}
