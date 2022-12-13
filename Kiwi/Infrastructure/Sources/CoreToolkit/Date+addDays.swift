import Foundation

public extension Date {
  func addDays(numOfDays: Int) -> Date? {
    var dateComponents = DateComponents()
    dateComponents.day = numOfDays
    
    return Calendar.autoupdatingCurrent.date(byAdding: dateComponents, to: self)
  }
}
