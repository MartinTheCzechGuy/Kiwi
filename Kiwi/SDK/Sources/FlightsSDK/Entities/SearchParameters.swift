import Foundation

public struct SearchParameters: Encodable {
  let partner: String
 //Example: partner_market=cz, Use ISO 3166-1 alpha-2
  let partnerMarket: String
  let flyFrom: String
  let departure: String
  let cabinType: CabinType
  let children: Int
  let adults: Int
  let priceTo: Int
  let currency: String
  // language of city names in the answer
  let locale: String
  let limit: Int
  let maxStopOvers: Int
  let returnDepartureBefore: String
  let returnDepartureAfter: String
  let returnFromDifferentAirport: Bool
  let minNights: Int
  let maxNights: Int
  
  enum CodingKeys: String, CodingKey {
    case partner
    case partnerMarket
    case flyFrom = "fly_from"
    case departure = "depart_after"
    case cabinType = "selected_cabins"
    case children = "children"
    case adults = "adult_hold_bag"
    case priceTo = "price_to"
    case currency = "curr"
    case locale = "locale"
    case limit = "limit"
    case maxStopOvers = "max_stopovers"
    case returnDepartureBefore = "rt_depart_before"
    case returnDepartureAfter = "rt_depart_after"
    case returnFromDifferentAirport = "ret_from_diff_airport"
    case minNights = "nights_in_dst_from"
    case maxNights = "nights_in_dst_to"
  }
  
  public enum CabinType: String, Encodable {
    case economy = "M"
    case economyPremium = "W"
    case business = "C"
    case firstClass = "F"
  }
  
  public init(
    partner: String,
    partnerMarket: String,
    flyFrom: String,
    departure: String,
    cabinType: CabinType,
    children: Int,
    adults: Int,
    priceTo: Int,
    currency: String,
    locale: String,
    limit: Int,
    maxStopOvers: Int,
    returnDepartureBefore: String,
    returnDepartureAfter: String,
    returnFromDifferentAirport: Bool,
    minNights: Int,
    maxNights: Int
  ) {
    self.partner = partner
    self.partnerMarket = partnerMarket
    self.flyFrom = flyFrom
    self.departure = departure
    self.cabinType = cabinType
    self.children = children
    self.adults = adults
    self.priceTo = priceTo
    self.currency = currency
    self.locale = locale
    self.limit = limit
    self.maxStopOvers = maxStopOvers
    self.returnDepartureBefore = returnDepartureBefore
    self.returnDepartureAfter = returnDepartureAfter
    self.returnFromDifferentAirport = returnFromDifferentAirport
    self.minNights = minNights
    self.maxNights = maxNights
  }
}
