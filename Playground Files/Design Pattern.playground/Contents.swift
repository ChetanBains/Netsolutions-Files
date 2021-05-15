import UIKit

// Singleton


class Singleton{
//with private initilizer you cannot create multiple instances of the class
    private init(){}
//This creates a single instance of the class
    static let shared = Singleton()
    
    var state = "Add a state"
    
    func helloSingleton(){
        print("Added a Function state")
    }
    
}

//let obj = Singleton()

print(Singleton.shared.state)


