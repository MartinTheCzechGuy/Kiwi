import FlightOffers
import SwiftUI

public struct RootView: View {
  
  public init() {}
  
  public var body: some View {
    FlightOffersView(viewModel: .init(flightsClient: .live()))
  }
}
