import Swinject
import SwinjectAutoregistration

public class FlightsOffersAssembly: Assembly {
  
  public init() { }
  
  public func assemble(container: Container) {
    container.autoregister(FlightOffersView.self, initializer: FlightOffersView.init)
    container.autoregister(FlightOffersViewModel.self, initializer: FlightOffersViewModel.init)
  }
}
