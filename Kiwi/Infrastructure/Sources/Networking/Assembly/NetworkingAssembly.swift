import InstanceProvider
import Swinject
import SwinjectAutoregistration

public class NetworkingAssembly: Assembly {
  
  public init() { }
  
  public func assemble(container: Container) {
    container.autoregister(NetworkingClientType.self, initializer: NetworkingClient.init)
  }
}
