import InstanceProvider
import Swinject
import SwinjectAutoregistration

public class FlightsSDKAssembly: Assembly {
  
  public init() { }
  
  public func assemble(container: Container) {
    container.autoregister(FlightsClient.self, initializer: FlightsClient.live)
  }
}
