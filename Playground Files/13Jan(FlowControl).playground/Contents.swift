import UIKit

// For in Loops

let name = ["hello","World","Good","Morning"]
for word in name
{
    print(word)
}

//let str = [1:"hello",2:"world",3:"Good Morning"]
//for(num,wording) in str{
//    print("My numbers is \(num) and word is \(wording)")
//}
let str = ["hello":1,"world":2,"Good Morning":3]
for(num,wording) in str
{
    print("My word is \(num) and number is \(wording)")
}

for index in 1...3
{
    print(index)
}
 
for index in 1..<3
{
    print(index)
}

// WHILE LOOPS
let num = 5
var index = 0
while index<num {
    print("Hello World")
    index += 1
}
repeat {
    print("repeat  loop  Once ")
}while false

// Ternary Operator
var txt = 10
var world = 5

world < txt ? (world > txt)? print("NO-IN"):print("Yes-IN") : print("No")
