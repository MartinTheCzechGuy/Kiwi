import SwiftUI

public struct ErrorView: View {
  
  private let okTap: () -> Void
  
  public init(okTap: @escaping () -> Void) {
    self.okTap = okTap
  }
  
  public var body: some View {
    VStack(spacing: 50) {
      Text("Something went wrong")
        .font(.title)
        .padding(.top, 75)
      
      Text("Please try again later")
        .font(.body)
      
      Spacer()
      
      Button("Ok", action: okTap)
        .primaryButton()
    }
    .padding()
  }
}

struct ErrorView_Previews: PreviewProvider {
  static var previews: some View {
    ErrorView(okTap: {})
  }
}
