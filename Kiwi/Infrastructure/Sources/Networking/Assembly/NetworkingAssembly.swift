import InstanceProvider
import Swinject
import SwinjectAutoregistration

public class NetworkingAssembly: Assembly {
  
  public init() { }
  
  public func assemble(container: Container) {
    container.autoregister(NetworkClientType.self, initializer: NetworkClient.init)
  }
}
