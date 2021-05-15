import UIKit

@objc class Person: NSObject {
    @objc dynamic var name = "Chetanjeev"
}

let new = Person()

print("I was previously called \(new.name)")

new.observe(\Person.name, options: .new) {
    person, change in
    print("I'm now called \(person.name)")
}

new.name = "Chetanjeev Singh"


