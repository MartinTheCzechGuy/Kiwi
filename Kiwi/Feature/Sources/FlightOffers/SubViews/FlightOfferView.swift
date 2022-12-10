import SwiftUI

struct FlightOfferView: View {
  
  private let offer: FlightOffer
  private let onButtonTap: () -> Void
  
  init(
    offer: FlightOffer,
    onButtonTap: @escaping () -> Void
  ) {
    self.offer = offer
    self.onButtonTap = onButtonTap
  }
  
  var body: some View {
    VStack(spacing: 50) {
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
            .frame(width: 200, height: 200)
        }
      )
      
      Text("Limited offer to \(offer.destination) for \(offer.price) for \(offer.adults) adults")
        .frame(maxWidth: .infinity, alignment: .leading)
      
      HStack {
        VStack(alignment: .leading) {
          Text("Departure")
            .font(.callout)
            .fontWeight(.semibold)
          
          Text(offer.departureFrom)
          Text("\(offer.departureTime)")
        }
        
        Spacer()
        
        VStack(alignment: .leading) {
          Text("Arrival")
            .font(.callout)
            .fontWeight(.semibold)
          
          Text(offer.destination)
          Text("\(offer.arrivalTime)")
        }
      }
      
      Button("Book now", action: onButtonTap)
        .padding()
        .background(Color.black)
        .foregroundColor(.white)
        .clipShape(Capsule())
      
      Spacer()
    }
    .font(.body)
    
  }
  
}
struct FlightOfferView_Previews: PreviewProvider {
  static var previews: some View {
    FlightOfferView(
      offer:
        FlightOffer(
          imageURL: URL(string: "https://images.kiwi.com/photos/600x330/prague_cz.jpg")!,
          destination: "Prague",
          departureFrom: "Brno",
          departureTime: "2023-03-07 11:55 AM",
          arrivalTime: "2023-03-07 2:45 PM",
          price: 200,
          adults: 2
        ),
      onButtonTap: {}
    )
    .padding()
  }
}
