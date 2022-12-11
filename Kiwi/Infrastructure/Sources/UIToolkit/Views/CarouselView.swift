import UIKit
import SwiftUI

public struct CarouselView<Page: View, Item: Hashable>: View {
  
  private let items: [Item]
  private let pageView: (Item) -> Page
  
  @Binding private var index: Int
  
  public init(
    items: [Item],
    index: Binding<Int>,
    @ViewBuilder pageView: @escaping (Item) -> Page
  ) {
    self.items = items
    self._index = index
    self.pageView = pageView
    
    UIPageControl.appearance().currentPageIndicatorTintColor = .black
    UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
  }
  
  public var body: some View {
    TabView(selection: $index) {
      ForEach(Array(items.enumerated()), id: \.element) { index, element in
        pageView(element)
          .tag(index)
      }
    }
    .tabViewStyle(.page(indexDisplayMode: .always))
  }
}

struct CarouselView_Previews: PreviewProvider {
  private struct PreviewItem: Hashable {
    let name: String
    let description: String
  }
  
  struct CarouselContainer: View {
    @State private var index = 0
    
    var body: some View {
      CarouselView(
        items: [
          PreviewItem(name: "Item 1", description: "This is item 1"),
          PreviewItem(name: "Item 2", description: "This is item 2")
        ],
        index: $index
      ) { item in
        VStack {
          Text(item.name)
          Text(item.description)
        }
      }
    }
  }
  
  static var previews: some View {
    CarouselContainer()
  }
}
