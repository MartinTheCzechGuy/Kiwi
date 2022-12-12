import FlightOffers
import FlightsSDK
import InstanceProvider
import Networking
import Swinject

let instanceProvider: InstanceProvider = {
  let assemblies: [Assembly] = [
    InstanceProviderAssembly(),
    FlightsOffersAssembly(),
    FlightsSDKAssembly(),
    NetworkingAssembly()
  ]
  
  let assembler = Assembler()
  assembler.apply(assemblies: assemblies)
  
  return assembler.resolver.resolve(InstanceProvider.self)!
}()
