import UIKit

// classes are reference types

class person {
    
    var name: String
    var age : Int
    
    init(Name:String,Age:Int){
        name = Name
        age = Age
    }

}

var objc = person(Name: "Chetanjeev", Age: 22)
var objClass = objc

objc.name = "Singh"
objc.age = 23
objClass.name = "Bains"
objClass.age = 24

print(objc.name)
print(objc.age)
print(objClass.name)
print(objClass.age)

// structure are value types

struct test {
    var initial : String
    var value : Int
}

var objs = test(initial: "CS", value: 100)
var objStruct = objs

objs.initial = "C"
objs.value = 80
objStruct.initial = "CSB"
objStruct.value = 50

print(objs.initial)
print(objs.value)
print(objStruct.initial)
print(objStruct.value)


