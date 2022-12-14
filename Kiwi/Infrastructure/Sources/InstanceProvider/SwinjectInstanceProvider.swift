import Swinject

class SwinjectInstanceProvider: InstanceProvider {
  
  let resolver: Resolver
  
  init(resolver: Resolver) {
    self.resolver = resolver
  }
  
  func resolve<Instance>(_ type: Instance.Type) -> Instance {
    guard let instance = resolver.resolve(type) else {
      fatalError("Could not resolve an instance of \(type) -> check if you registered it correctly.")
    }
    
    return instance
  }
  
  func resolve<Instance, Arg>(_ type: Instance.Type, argument: Arg) -> Instance {
    guard let instance = resolver.resolve(type, argument: argument) else {
      fatalError("Could not resolve an instance of \(type) -> check if you registered it correctly.")
    }
    
    return instance
  }
  
  func resolve<Instance, Arg, Arg1, Arg2>(
    _ type: Instance.Type,
    argument: Arg,
    argument1: Arg1,
    argument2: Arg2
  ) -> Instance {
    guard let instance = resolver.resolve(type, argument: argument) else {
      fatalError("Could not resolve an instance of \(type) -> check if you registered it correctly.")
    }
    
    return instance
  }
}
