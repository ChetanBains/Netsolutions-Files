//Strings and Characters

//String Literals

let string = "hello"
print(string)


//Multiline String Literals

let quote = """
    Imagination is powerful than knowledge
        - Albert Einstein
"""
print(quote)

//Entended String Delimiters
let quoteE = #"""
    Imagination is powerful than knowledge
        - Albert Einstein
"""#

// Initializing Empty String

var emptystring1 = ""
var emptystring2 = String()

//String Mutability

var str1 = "Hello World"
str1 += " Good Morning"

//String are value types ie the string value is copied when it's passed.A new copy is passed rather than original string

//Working in Characters

for character in "Dog!"{
    print(character)
}

let exclamationMark : Character = "!"
let arr: [Character] = ["C","a","t"]
print(arr)

// Concatenation
 let string1 = "hello"
let string2 = "World"
print(string+string2)

var instruction = "kitty"
instruction += string2
print(instruction)

// String Interpolation

let multiplier = 5
let mesage = "\(Double(multiplier)) times 2.5 is \(Double(multiplier) * 2.6)"

print(instruction.count)
print(instruction.startIndex)
print(instruction.endIndex)

//Modifying  string

var dxt = "How are "
dxt.append("you")
//print(dxt.index(after: index.startIndex)
print(dxt)

// Substring
let varA = "Hello, world!"
let varB = varA.firstIndex(of: ",") ?? varA.endIndex

// Prefix and Suffix Equality







