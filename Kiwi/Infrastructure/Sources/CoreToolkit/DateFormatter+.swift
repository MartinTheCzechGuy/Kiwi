import Foundation

public extension DateFormatter {
  static var shortenedISO8601Formatter: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateFormat = "YYYY-MM-dd'T'HH:mm"
    
    return formatter
  }
}
