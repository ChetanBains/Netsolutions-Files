import UIKit


//  Write a switch statement that takes an age as an integer and prints out the life stage related to that age. You can make up the life stages, or use my categorization as follows: Infant: 0-2 years, Child: 3-12 years, Teenager: 13-19 years, Adult: 20-39, Middle aged: 40-60, Elderly: 61+.


var age = 13

switch age {

    case age where age<=2 :
        print("Infant")
    case age where age>2 && age<=12 :
        print("Child")
    case age where age>12 && age<=19:
        print("Teenager")
    case age where age>19 && age<=39 :
        print("Adult")
    case age where age>39 && age<=60:
        print("Middle aged")
    case age where age>60 :
        print("Elderly")
    default :
        print("Wrong Input")
    
}
