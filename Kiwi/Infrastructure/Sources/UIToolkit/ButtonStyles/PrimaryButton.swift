import SwiftUI

struct PrimaryButton: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .frame(width: 125)
      .padding()
      .background(Color.black)
      .foregroundColor(.white)
      .clipShape(Capsule())
  }
}

public extension Button {
  func primaryButton() -> some View {
    buttonStyle(PrimaryButton())
  }
}

struct PrimaryButton_Previews: PreviewProvider {
  static var previews: some View {
    Button("Understood", action: {})
      .primaryButton()
  }
}
