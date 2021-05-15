import UIKit

//  Create a variable named counter and set it equal to 0. Create another variable named roll and set it equal to 0. Create a repeat-while loop. Inside the loop, set roll equal to Int.random(in: 0..<6) which means to pick a random number between 0 and 5. Then increment counter by 1. Finally, print "After X rolls, roll is Y" where X is the value of counter and Y is the value of roll. Set the loop condition such that the loop finishes when the first 0 is rolled.

var counter = 0
var roll = 0

repeat{
    roll = Int.random(in: 0..<6)
    counter += 1
    print("After \(counter) counters, roll is \(roll)")
}while roll != 0
