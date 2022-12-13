import Foundation

struct FlightsEntity: Decodable {
  let currency: String
  let numOfAdults: Int
  let data: [FlightDataEntity]
  
  enum RootKeys: String, CodingKey {
    case currency
    case data
    case searchParams = "search_params"
  }
  
  enum SearchParamsKeys: String, CodingKey {
    case seats
  }
  
  enum SeatsKeys: String, CodingKey {
    case adults
  }
  
  init(currency: String, numOfAdults: Int, data: [FlightDataEntity]) {
    self.currency = currency
    self.numOfAdults = numOfAdults
    self.data = data
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: RootKeys.self)
    self.currency = try container.decode(String.self, forKey: .currency)
    self.data = try container.decode([FlightDataEntity].self, forKey: .data)

    let searchParamsContainer = try container.nestedContainer(keyedBy: SearchParamsKeys.self, forKey: .searchParams)
    let seatsContainer = try searchParamsContainer.nestedContainer(keyedBy: SeatsKeys.self, forKey: .seats)

    self.numOfAdults = try seatsContainer.decode(Int.self, forKey: .adults)
  }
}

struct FlightDataEntity: Decodable {
  let cityFrom: String
  let cityTo: String
  let countryFromCode: String
  let countryToCode: String
  let departure: Date
  let arrival: Date
  let price: Double
  let nightsInDestination: Int
  let routes: [RouteEntity]
  
  enum RootKeys: String, CodingKey {
    case cityFrom
    case cityTo
    case countryFrom
    case countryTo
    case dTimeUTC
    case aTimeUTC
    case price
    case nightsInDestination = "nightsInDest"
    case routes = "route"
  }
  
  enum CountryKeys: String, CodingKey {
    case code
  }
  
  init(cityFrom: String, cityTo: String, countryFromCode: String, countryToCode: String, departure: Date, arrival: Date, price: Double, nightsInDestination: Int, routes: [RouteEntity]) {
    self.cityFrom = cityFrom
    self.cityTo = cityTo
    self.countryFromCode = countryFromCode
    self.countryToCode = countryToCode
    self.departure = departure
    self.arrival = arrival
    self.price = price
    self.nightsInDestination = nightsInDestination
    self.routes = routes
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: RootKeys.self)
    self.cityFrom = try container.decode(String.self, forKey: .cityFrom)
    self.cityTo = try container.decode(String.self, forKey: .cityTo)
    let departureTimeInterval = try container.decode(Double.self, forKey: .dTimeUTC)
    let arrivalTimeInterval = try container.decode(Double.self, forKey: .aTimeUTC)
    self.departure = Date(timeIntervalSince1970: departureTimeInterval)
    self.arrival = Date(timeIntervalSince1970: arrivalTimeInterval)
    self.price = try container.decode(Double.self, forKey: .price)
    self.nightsInDestination = try container.decode(Int.self, forKey: .nightsInDestination)
    self.routes = try container.decode([RouteEntity].self, forKey: .routes)

    let countryFromContainer = try container.nestedContainer(keyedBy: CountryKeys.self, forKey: .countryFrom)
    let countryToContainer = try container.nestedContainer(keyedBy: CountryKeys.self, forKey: .countryTo)
    self.countryFromCode = try countryFromContainer.decode(String.self, forKey: .code)
    self.countryToCode = try countryToContainer.decode(String.self, forKey: .code)
  }
}

struct RouteEntity: Decodable {
  let cityFrom: String
  let cityTo: String
  let departure: Date
  let arrival: Date
  
  enum CodingKeys: String, CodingKey {
    case cityFrom
    case cityTo
    case departure = "dTimeUTC"
    case arrival = "aTimeUTC"
  }
  
  init(cityFrom: String, cityTo: String, departure: Date, arrival: Date) {
    self.cityFrom = cityFrom
    self.cityTo = cityTo
    self.departure = departure
    self.arrival = arrival
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.cityFrom = try container.decode(String.self, forKey: .cityFrom)
    self.cityTo = try container.decode(String.self, forKey: .cityTo)
    
    let departureTimeInterval = try container.decode(Double.self, forKey: .departure)
    let arrivalTimeInterval = try container.decode(Double.self, forKey: .arrival)
    self.departure = Date(timeIntervalSince1970: departureTimeInterval)
    self.arrival = Date(timeIntervalSince1970: arrivalTimeInterval)
  }
}
