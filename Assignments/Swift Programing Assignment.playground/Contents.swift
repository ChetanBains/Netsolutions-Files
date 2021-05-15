import UIKit

//<-----------------------------------Question 1------------------------------>

//You're given strings “jewels” representing the types of stones that are jewels, and “stones” representing the stones you have. Each character in stones is a type of stone you have. You want to know how many of the stones you have are also jewels. Letters are case sensitive, so "a" is considered a different type of stone from "A".
//Example 1:
//Input: jewels = "aA", stones = "aAAbbbb"
//Output: 3
//
//Example 2:
//Input: jewels = "z", stones = "ZZ"
//Output: 0
//
//Constraints:
//1 <= jewels.length, stones.length <= 50
//jewels and stones consist of only English letters.
//All the characters of jewels are unique.

let jewels = "zc"
let stones = "ZZzzzafchj"

var counter = 0

for charJ in jewels{
    for charS in stones{
        if (jewels.firstIndex(of:charJ)) == (jewels.firstIndex(of:charS)){
            counter += 1
        }
    }
}
print(counter)



//<-------------------------------------- Question 2 ----------------------------------------->
//Given a positive integer num, write a function which returns True if num is a perfect square else False.
//Follow up: Do not use any built-in library function such as sqrt.
//Example 1:
//Input: num = 16
//Output: true
//Example 2:
//Input: num = 14
//Output: false


let num = 729

func prefectSquare() -> Bool{
    var index = 1
    while index<=num {
    if ((num % index == 0) && (num / index == index)){
        return true
        }
        index+=1
    }
    return false
}
print(prefectSquare())


//<------------------------------------- Question 3 ---------------------------------------->

//You are given an integer array nums sorted in ascending order (with distinct values), and an integer target. Suppose that nums is rotated at some pivot unknown to you beforehand (i.e., [0,1,2,4,5,6,7] might become [4,5,6,7,0,1,2]). If target is found in the array return its index, otherwise, return -1.


var arr = [4,5,6,7,0,1,2]
var target = 1

func pivot() -> Int {
    for index in 0 ..< arr.count{
        if(arr[index]==target){
            return index
        }
    }
    return -1
}
print(pivot())

//<------------------------------------- Question 4 ---------------------------------------->

//Write an algorithm to determine if a number n is happy. A happy number is a number defined by the following process:
//Starting with any positive integer, replace the number by the sum of the squares of its digits.
//Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
//Those numbers for which this process ends in 1 are happy.
//Return true if n is a happy number, and false if not.


var numHappy = 100
var arrHappy = [Int]()

func isHappy() -> Bool{
    if(numHappy <= 0){
        return false
    }
    while(numHappy != 1){
        arrHappy.append(numHappy)
        var sum = 0
        while(numHappy > 0){
            var digit = 0
            digit = numHappy % 10
            sum += digit * digit
            numHappy /= 10
//            print(sum)
            }
        numHappy = sum
//       print(numHappy)
        sum = 0
//        for item in arrHappy{
//            print(item)
//        }
        if(arrHappy.contains(numHappy)){
            break
        }
    }
    if(numHappy == 1){
        return true
    }
    else{
        return false
    }
}
print(isHappy())


//<------------------------------------- Question 5 ---------------------------------------->

//Given a non-negative integer `num`, repeatedly add all its digits until the result has only one digit.

var numDigit = 288
var sumDigit = 0
while (numDigit > 0 || sumDigit > 9)
{
    print("Number:\(numDigit)")
    print("Sum:\(sumDigit)")
    if (numDigit == 0) {
        numDigit = sumDigit;
        sumDigit = 0;
    }
    sumDigit += numDigit % 10;
    numDigit /= 10;
}
print("Result : \(sumDigit)")


//<------------------------------------- Question 6 ---------------------------------------->

//Given a list of numbers and a number k, return whether any two numbers from the list add up to k.


var numList = [1,0,3,4,5,3,7]
var k = 8
var sumNumber = 0
for index in 0 ..< numList.count{
    for output in (index+1) ..< numList.count{
        sumNumber = numList[index]+numList[output]
        if(sumNumber == k){
            print("Number : \(numList[index]) at index : \(index) Number : \(numList[output]) at index : \(output)  in array adds up to value of k")
     }
    }
  }





