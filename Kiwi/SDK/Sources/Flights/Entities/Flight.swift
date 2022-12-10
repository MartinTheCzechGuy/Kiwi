public struct Flight: Decodable {
  let currency: String
  let flightData: [FlightData]
  
  public init(
    currency: String,
    flightData: [FlightData]
  ) {
    self.currency = currency
    self.flightData = flightData
  }
  
  enum CodingKeys: String, CodingKey {
    case currency
    case flightData = "data"
  }
}

public struct FlightData: Decodable {
  let cityFrom: String
  let cityTo: String
  let countryFrom: FlightDataCountry
  let countryTo: FlightDataCountry
  let dTimeUTC: Int
  let aTimeUTC: Int
  let price: Int
  let route: [Route]
  
  public init(cityFrom: String, cityTo: String, countryFrom: FlightDataCountry, countryTo: FlightDataCountry, dTimeUTC: Int, aTimeUTC: Int, price: Int, route: [Route]) {
    self.cityFrom = cityFrom
    self.cityTo = cityTo
    self.countryFrom = countryFrom
    self.countryTo = countryTo
    self.dTimeUTC = dTimeUTC
    self.aTimeUTC = aTimeUTC
    self.price = price
    self.route = route
  }
}

public struct FlightDataCountry: Decodable {
  let code: String
  let name: String
  
  public init(code: String, name: String) {
    self.code = code
    self.name = name
  }
}

public struct Route: Decodable {
  let cityFrom: String
  let cityTo: String
  let dTimeUTC: Int
  let aTimeUTC: Int
  
  public init(cityFrom: String, cityTo: String, dTimeUTC: Int, aTimeUTC: Int) {
    self.cityFrom = cityFrom
    self.cityTo = cityTo
    self.dTimeUTC = dTimeUTC
    self.aTimeUTC = aTimeUTC
  }
}


struct FlightsSearch: Encodable {
  let partner: String
 //Example: partner_market=cz, Use ISO 3166-1 alpha-2
  let partnerMarket: String
  let flyFrom: String
  let destination: String
  // YYYY-MM-DDThh:mm
  let departure: String
  //  depart_before
  let arrival: String
  // arrive_before
  // number of nights in destination
  let nights: Int
  let cabinType: CabinType
  let children: Int
  let adults: Int
  let priceFrom: Int
  let priceTo: Int
  let currency: String
  // language of city names in the answer
  let locale: String
  let limit: Int
  
  enum CodingKeys: String, CodingKey {
    case partner
    case partnerMarket
    case flyFrom = "fly_from"
    case destination = "fly_to"
    case departure = "depart_after"
    case arrival = "arrive_after"
    case nights = "nights_in_dst_to"
    case cabinType = "selected_cabins"
    case children = "children"
    case adults = "adult_hold_bag"
    case priceFrom = "price_from"
    case priceTo = "price_to"
    case currency = "curr"
    case locale = "locale"
    case limit = "limit"
  }
  
  enum CabinType: String, Encodable {
    case economy = "M"
    case economyPremium = "W"
    case business = "C"
    case firstClass = "F"
  }
}
