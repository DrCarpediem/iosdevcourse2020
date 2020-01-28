import UIKit

//dictionaries - unsorted, no order, key-value para, keys should be unique

//declere empty dictionary
var myDictionary = [String:String]()

//assigning data into a dictionary
myDictionary["SJD 293"] = "Red Ferrary"
myDictionary["UDS 122"] = "Silver Porsche"
//retrieving a value as optional string
let myCar = myDictionary["SJD 293"]

//replacing the value for a key
myDictionary["SJD 293"] = "Black Lambo"

//remove a value for the key
//myDictionary["SJD 293"] = nil

//loop through the items of a dictionary
//tuple type - comma-separated list of types, enclosed in parentheses
for (key, value) in myDictionary {
//    do stuff for each item of the dictionary
    print(key)
    print(value)
    print("\(key) is a \(value)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     )
}
