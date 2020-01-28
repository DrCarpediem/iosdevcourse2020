import UIKit

//aray - defined order: 0 - a, 1 - b, 2 - c, etc.

var a = "Dog"
var b = "Cat"
var c = "Bird"

a = "My " + a

var myArray:[String] = ["Dog", "Cat", "Bird"]

//print(myArray[0])
//
//myArray[0] = "My " + myArray[0]

//for counter in 0...2 {
//
//    myArray[counter] = "My " + myArray[counter]
//    print(myArray[counter])
//}


//for counter in 0...myArray.count-1 {
//
//    myArray[counter] = "My " + myArray[counter]
//    print(myArray[counter])
//}


for item in myArray {
    print(item)
}

//how to declare an empty array
var emptyArray:[String] = []
var emptyArray2 = [String]()

//add items
myArray.append("Racoon")

myArray.insert("Frog", at: 0)

myArray += ["Frog", "Bear"]

//remove item

myArray.remove(at: 0)


//search array
myArray.index(after: 2)

myArray.first

myArray.last
