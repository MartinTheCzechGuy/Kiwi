import Foundation

public enum LoadingState<Value, Failure: Error> {
  case loading
  case loaded(Value)
  case failed(Failure)
}
