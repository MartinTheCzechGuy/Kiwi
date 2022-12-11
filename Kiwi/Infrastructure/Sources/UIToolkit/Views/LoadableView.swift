import Loading
import SwiftUI

public struct LoadableView<
  Content: View,
  Value,
  Failure: Error
>: View {
  
  private let loadingState: LoadingState<Value, Failure>
  private let loadingTitle: String
  private let onErrorOkTap: () -> Void
  private let content: (Value) -> Content
  
  public init(
    loadingState: LoadingState<Value, Failure>,
    loadingTitle: String,
    onErrorOkTap: @escaping () -> Void,
    @ViewBuilder content: @escaping (Value) -> Content
  ) {
    self.loadingState = loadingState
    self.loadingTitle = loadingTitle
    self.onErrorOkTap = onErrorOkTap
    self.content = content
  }
  
  public var body: some View {
    switch loadingState {
    case .loading:
      LoadingView(title: loadingTitle)
    case let .loaded(data):
      content(data)
    case .failed:
      ErrorView(okTap: onErrorOkTap)
    }
  }
}

struct LoadableView_Previews: PreviewProvider {
  static var previews: some View {
    LoadableView(
      loadingState: LoadingState<Int, Error>.loaded(3),
      loadingTitle: "Loading...",
      onErrorOkTap: {},
      content: { value in
        VStack {
          Text("This is content view with value -> \(value)")
            .font(.title3)
        }
      }
    )
  }
}
