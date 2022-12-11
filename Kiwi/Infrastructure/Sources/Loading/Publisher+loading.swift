import Combine
import Foundation

public extension Publisher where Failure: Error {
  func loadingPublisher() -> AnyPublisher<LoadingState<Output, Failure>, Never> {
    map(LoadingState.loaded)
      .catch { Just(LoadingState.failed($0)) }
      .prepend(LoadingState.loading)
      .eraseToAnyPublisher()
  }
}
