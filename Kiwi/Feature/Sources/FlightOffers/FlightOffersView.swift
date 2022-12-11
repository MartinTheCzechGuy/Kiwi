import Loading
import UIToolkit
import SwiftUI

public struct FlightOffersView: View {
  
  @ObservedObject private var viewModel: FlightOffersViewModel
  @State private var carouselIndex = 0
  
  public init(viewModel: FlightOffersViewModel) {
    self.viewModel = viewModel
  }
  
  public var body: some View {
    LoadableView(
      loadingState: viewModel.offers,
      loadingTitle: "Loading offers...",
      onErrorOkTap: { viewModel.fetchOffers() },
      content: { offers in
        VStack {
          Text("Flight offers")
            .fontWeight(.black)
          
          CarouselView(
            items: offers,
            index: $carouselIndex
          ) { offer in
            SingleOfferView(
              offer: offer,
              onButtonTap: {
                if let url = viewModel.bookingWebsite {
                  UIApplication.shared.open(url)
                }
              }
            )
          }
        }
        .padding()
        
      }
    )
    .onAppear {
      viewModel.fetchOffers()
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
