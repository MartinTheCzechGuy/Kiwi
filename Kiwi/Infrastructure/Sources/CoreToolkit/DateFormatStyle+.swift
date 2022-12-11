import Foundation

public extension FormatStyle where Self == Date.FormatStyle  {
  static var date: Date.FormatStyle {
    Date.FormatStyle()
      .year(.padded(4))
      .month(.twoDigits)
      .day(.twoDigits)
  }
}
