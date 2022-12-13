import CoreToolkit
import UIToolkit
import SwiftUI

struct SingleOfferView: View {  
  private let offer: FlightOffer
  
  init(offer: FlightOffer) {
    self.offer = offer
  }
  
  var body: some View {
    VStack(spacing: 30) {
      AsyncImage(
        url: offer.imageURL,
        content: { loadedImage in
          loadedImage
            .resizable()
            .scaledToFit()
            .cornerRadius(5)
        },
        placeholder: {
          Rectangle()
            .fill(Color.gray)
            .redacted(reason: .placeholder)
        }
      )
      .frame(maxHeight: UIScreen.main.bounds.height / 4)
      
      VStack(spacing: 15) {
        Text("Enjoy \(offer.nightsInDestination) \(offer.nightsInDestination > 1 ? "nights" : "night") in \(offer.destination)")
          .font(.title2)
          .fontWeight(.black)
        
        HStack {
          Text(offer.journeyToDestionation.departure, format: .date)
          Text("-")
          Text(offer.journeyFromDestination.departure, format: .date)
        }
        
        Text("Only \(offer.price) for \(offer.adults) adults")
      }
      .font(.body)
      
      VStack(alignment: .leading, spacing: 15) {
        Text("Journey to destination")
          .fontWeight(.black)
        Text("\(offer.journeyToDestionation.from) -> \(offer.journeyToDestionation.to)")
        Text(offer.journeyToDestionation.departure, format: .dateTime)
        
        
        Text("Return journey")
          .fontWeight(.black)
        Text("\(offer.journeyFromDestination.from) -> \(offer.journeyFromDestination.to)")
        Text(offer.journeyFromDestination.departure, format: .dateTime)
      }
      .font(.callout)
      .frame(maxWidth: .infinity, alignment: .leading)
      
      Spacer()
    }
    .font(.body)
  }
}

struct SingleOfferView_Previews: PreviewProvider {
  static var previews: some View {
    SingleOfferView(
      offer:
        FlightOffer(
          imageURL: URL(string: "https://images.kiwi.com/photos/600x330/prague_cz.jpg"),
          destination: "Prague",
          price: "€200",
          adults: 2,
          nightsInDestination: 5,
          journeyToDestionation: Route(
            from: "Brno",
            to: "Prague",
            departure: .now,
            arrival: .now
          ),
          journeyFromDestination: Route(
            from: "Prague",
            to: "Brno",
            departure: .now,
            arrival: .now
          )
        )
    )
    .padding()
  }
}
