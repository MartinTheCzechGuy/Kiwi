import UIToolkit
import SwiftUI

public struct FlightOffersView: View {
  
  @ObservedObject private var viewModel: FlightOffersViewModel
  @State private var carouselIndex = 0
  
  public init(viewModel: FlightOffersViewModel) {
    self.viewModel = viewModel
  }
  
  public var body: some View {
    VStack {
      Text("Flight offers")
        .fontWeight(.black)
      
      CarouselView(
        items: viewModel.offers,
        index: $carouselIndex
      ) { offer in
        FlightOfferView(
          offer: offer,
          onButtonTap: {
            if let url = URL(string: "https://www.kiwi.com/en/") {
              UIApplication.shared.open(url)
            }
          }
        )
      }
      .onAppear {
        viewModel.fetchOffers()
      }
      .padding()
    }
  }
  
  struct FlightOffersView_Previews: PreviewProvider {
    static var previews: some View {
      FlightOffersView(
        viewModel: .init(
          flightsClient: .dev()
        )
      )
    }
  }
}
