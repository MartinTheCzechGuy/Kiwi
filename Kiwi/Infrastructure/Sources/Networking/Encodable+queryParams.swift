import Foundation

public extension Encodable {
  func encodeToQueryParameters() -> [URLQueryItem] {
    guard
      let jsonData = try? JSONEncoder().encode(self),
      let json = try? JSONSerialization.jsonObject(with: jsonData) as? [String: Any]
    else {
      return []
    }
    
    return json.map { k, v in URLQueryItem(name: k, value: "\(v)") }
  }
}
