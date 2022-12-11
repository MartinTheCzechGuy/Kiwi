import FlightOffers
import SwiftUI

public struct RootView: View {
  
  public init() {}
  
  public var body: some View {
    instanceProvider.resolve(FlightOffersView.self)
  }
}
