import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {

    router.get("name") { req in
      return "Kristijan Vidovic"
    }

    router.get("json") { req in
      return Person(name: "Kristijan Vidovic", age: 0)
    }
}
// Important: your class or struct conforms to Content
struct Person: Content {
  var name: String
  var age: Int
}
