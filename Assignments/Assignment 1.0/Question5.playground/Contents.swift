import UIKit

//Question 5.1

//Create a string constant called firstName and initialize it to your first name. Also create a string constant called lastName and initialize it to your last name.

let firstName = "Chetanjeev"
let lastName = "Bains"

//Question 5.2

//Create a string constant called fullName by adding the firstName and lastName constants together, separated by a space.

let fullName = firstName+" "+lastName
print(fullName)


//Question 5.3

//Using interpolation, create a string constant called myDetails that uses the fullName constant to create a string introducing yourself. For example, my string would read: "Hello, my name is Lorenzo Boaro.".

let myDetails = "Hello, my name is \(fullName)."
print(myDetails)

//Question 5.4

//Using interpolation and multi-line string literals, create a string constant called myLongDetails that uses the fullName constant to create a long string introducing yourself. For example, my string would read: "Hello my name is Lorenzo Boaro\nand I'm learning how to use\nmulti-line string literals.".

let  myLongDetails = """
\(myDetails)\nI'm learning to use\nmulti-line string literals.
"""
print(myLongDetails)
