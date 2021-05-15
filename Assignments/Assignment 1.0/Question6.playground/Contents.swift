import UIKit

//Question 6.1

//Declare a constant tuple that contains three Int values followed by a Double. Use this to represent a date (month, day, year) followed by an average temperature for that date.

let month = 1;
let day = 4;
let year = 2020;
let avgTemp = 18.7 ;

let tupleList = (month,day,year,avgTemp)
print(tupleList)
//Question 6.2

//Change the tuple to name the constituent components. Give them names related to the data that they contain: month, day, year and averageTemperature.

var date = (month: 1, day: 14, year: 2021, avgTemp: 14.4)
print(date)


//Question 6.3

//In one line, read the day and average temperature values into two constants. You’ll need to employ the underscore to ignore the month and year.

//let newDay : Int
//let newTemp : Double

let (_,day_new,_,avgTemp_new) =  date

//print(newDay)
//print(newTemp)




//Question 6.4

//Up until now, you’ve only seen constant tuples. But you can create variable tuples, too. Change the tuple you created in the exercises above to a variable by using var instead of let. Now change the average temperature to a new value.


date.avgTemp = 15.5
print(date)
