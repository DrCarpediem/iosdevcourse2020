import UIKit

//COLLECTIONS, FUNCTIONS, CLOSURES

//коллекции: set, array, dictionary

//set - хранение уникальных объектов [0|1|2|3]
//array [] - коллекция объектов одного типа в определенном порядке, у каждого элемента свой индекс
//dictionary [:] - неупорядочная коллекция, нет индексов, но есть уникальные ключи определенного типа  [key:value|key:value|key:value|key:value]


//ARRAY - массив

var intArray1: Array <Int> = []
var intArray2 = Array<Int>()
var intArray: [Int] = []

//declaration
//the full type name
var emptyInts: Array<Int> = Array()

//shortened forms are preferred
var emptyDoubles: [Double] = []

//modifying arrays accessing array values

let constArray = [1,3,5,7,10]
var item = constArray[1]
print(item)
let count = constArray.count
//.count - возвращает количество элементов
var nextElement = constArray[count-1]
var iterator = 0
for item in constArray {
    print(item)
//    print(constArray[iterator])
//    iterator += 1
}

constArray.first
constArray.last

//updating elements

var varArray = [1,3,5,7,10]
//constArray[1] = 0 - warning
varArray[1] = 0
//varArray.map(<#T##transform: (Int) throws -> T##(Int) throws -> T#>)
//varArray.sort()
//varArray.sorted()


//addind and removing elements

var newArray = [Int]() //[1,2,3]
//newArray[0] = 1
//newArray[1] = 100
newArray.append(1)
newArray.append(2)
newArray.insert(3, at:  1)
newArray.remove(at: 1)
newArray.removeAll()

//iterating through an array

//for item in constArray {
//    <#code#>
//}

constArray.forEach { item in
    print(item)
}


//DICTIONARY


//creating

let constDictionary: Dictionary<String,Int> = [:]
//проинициализировали пустой словарь с ключом String и значением Int
var carProperties = [
    "color" : 123,
    "doors" : 4,
    "type" : 1
]

var car = [String:Int]()

//old method - var car2 = Dictionary<String,Int>()


//modifying

var dictItem = carProperties["color"]
//if let nonNilItem = carProperties["color"] {
//
//} else {
//
//}

carProperties["maxSpeed"] = 100000
carProperties
carProperties.removeValue(forKey: "maxSpeed")
carProperties


//iterating through - перемещение по словарю

carProperties.forEach { (key, value) in
    print(value)
}
carProperties.count

//tuple - кортеж - составной тип для обобщения пула данных
var tuple = (integer: 1, double: 2.1, myString: "ss")
var tupleItem1 = tuple.0
var tupleItem2 = tuple.1
var tupleItem3 = tuple.myString

//typealias - переименование любого типа
typealias MyCustomTupleType = (integer: Int, double: Double, myString: String)

//var customTuple: MyCustomTupleType
//customTuple.integer = 1
//customTuple


//SET

// creating

var customSet: Set<Int> = [1, 2, 3]
customSet.count //количество элементов в сете

var subSet: Set<Int> = [2, 3, 4]
var isSubset = subSet.isSubset(of: customSet)
subSet.intersection(customSet)

//customSet.filter { (argument) -> Bool in
//    if argument < 4 {
//        return true
//        }  else {
//        return false
//    }
//}
//let newset = filtered.map { arg in
//    return arg*2
//}

//modifying

customSet.remove(7)

//iterating through

//customSet.map { (<#Int#>) -> T in
//    <#code#>
//}



//FUNCTIONS


//define

func functionName (id index: Int, param2: Double) -> Int {
//    void - типа нет, функция ничего не возвращает
//    body of the function
    return index
}

//обычные типы
//func color(_ red: Int, _ green: Int, _ blue: Int) {
//    }

//опциональные
func color(_ red: Int? = 1, _ green: Int? = 1, _ blue: Int? = 1) -> Int? {
    
//    shadowing - unwraping red
    guard let red = red,
    let green = green,
    let blue = blue else {
        return 0
    }
     
    return red + green + blue
}
var colorComponent: Int? = nil

let variable = functionName (id: 1, param2: 1.5)
color()

//nested function - если вторая функция тспользуется только в теле большей функции
func biggerFunction() {
    func shortAction() {
        
    }
}

private  func shortAction() -> Void {
    
}

struct CustomStruct {
//    var
//    le
    
//    fileprivate func shortAction() {
//    internal func shortAction() {
    func shortAction() {
    }
    func internalFunc(){
        shortAction()
    }
}
var customStructVar = CustomStruct()
customStructVar.shortAction()

CustomStruct().shortAction()
CustomStruct().internalFunc()


import UIKit

var color = UIColor(white: 255, alpha: 1.0)
//color.
UIColor.orange

//Parameters



//CLOSURES

//тип,  с помощью которого можно проинициализировать переменную или константу, код выполняется после инициализации
//в объявлении типа нельзя дать имена, только типы аргументов

//var customClosure: () -> () = {
//    print ("closure is called")
//}
//var newClosure = customClosure
//newClosure()
//$ - обращение к ячейке памяти
typealias MyClosure = (Int, String) -> Void
var customClosure: (Int, String, Double) -> Void = {
    print ("closure is called")
    print($0)
    print($1)
    print($2)
}
var newClosure = customClosure
newClosure(1, "Hello", 1.0)

//var oneMoreClosure: myClosure = {
//    $0
//    $1
//    $2
//}

//HOMEWORK


    //1. Write a Swift program to check if two given arrays of integers have 0 as their first element.

//1st variant

let Array1 = [1, 3, 5, 7, 10]
let Array2 = [0, 2, 4, 6, 8]
let arrayFirstElement1 = Array1.first
let arrayFirstElement2 = Array2.first
if arrayFirstElement1 == 0 || arrayFirstElement2 == 0 {
    print ("Zero is out there")
} else {
    print ("Don't give up!")
}

//2nd variant

func firstElementZero (_ Array1:[Int], _ Array2:[Int]) -> Bool {
    
    if Array1.first == 0 && Array2.first == 0 {
        
        return true
    } else {
        return false
    }
    
}
print(firstElementZero([1, 3, 5, 7, 10],[0, 2, 4, 6, 8]))
print(firstElementZero([1, 3, 5, 7, 10],[1, 2, 4, 6, 8]))

    //2. Write a Swift program to test if an array of integers does not contain a 3 or a 5.

func containsThreeOrFive (_ myArray: [Int]) -> Bool {
    
    if !myArray.contains(3) || !myArray.contains(5) {
        return true
    } else {
        return false
    }
}
print(containsThreeOrFive([2,4,6,5,7]))
print(containsThreeOrFive([1,4,7,9,13]))


    //3. Write a Swift program to check whether the first element and the last element of a given array of integers are equal.

func equalFirstAndLast (_ myArray: [Int]) -> Bool {
    
    if myArray.first == myArray.last {
        return true
    } else {
        return false
    }
    
}
print(equalFirstAndLast([2,4,6,5,2]))

//!myArray.isEmpty



    //4. Write a Swift program that creates Array, adds an item, remove item, modify item and then prints size of the array.
    
var myArray: Array = [Int]()
myArray.append(1)
myArray.append(2)
myArray.append(3)
myArray.remove(at: 2)
myArray.insert(7, at:0)
let myArraySize = myArray.count
print(myArraySize)


    //5. Write a Swift program that creates Dictionary, adds an item, remove item, modify item and then prints size of the Dictionary.

var myDictionary: Dictionary = [Int:String]()
myDictionary[1] = "String1"
myDictionary[2] = "String2"
myDictionary[3] = "String3"
myDictionary.values
myDictionary.removeValue(forKey: 2)
myDictionary.updateValue("String4", forKey: 3)
myDictionary.values
let myDictionarySize = myDictionary.count
print(myDictionarySize)


    //6. Write a Swift program that creates Set, adds an item (+remove) and then prints size of the Set.

var mySet: Set<Int> = [1, 2, 3, 4, 5]
mySet.insert(6)
let newItems = [7,8,9]
mySet.formUnion(newItems)
mySet.remove(3)
let mySetSize = mySet.count
print(mySetSize)

    //7. Create 2 arrays, and merge them.

//let newArray = Array(repeating: 2, count: 7) -


//1st variant
var myArray1: Array = [1, 2, 3]
var myArray2: Array = [4, 5, 6]
let mergedArray = myArray1 + myArray2
print (mergedArray)

//2nd variant
var myArray3: Array = [1, 2, 3]
var myArray4: Array = [4, 5, 6]
myArray3 += myArray4
print(myArray3)

//3rd variant
var myArray5: Array = [1, 2, 3]
var myArray6: Array = [4, 5, 6]
myArray5.append(contentsOf: myArray6)
print(myArray5)

//4th variant
var myArray7: Array = [1, 2, 3]
var myArray8: Array = [4, 5, 6]
let mergedArray2 = [myArray7, myArray8].flatMap({ (element: [Int]) -> [Int] in
    return element
})
print (mergedArray2)

//5th variant
var myArray9: Array = [1, 2, 3]
var myArray10: Array = [4, 5, 6]
let mergedCollection = [myArray9, myArray10].joined()
let mergedArray3 = Array(mergedCollection)
print(mergedArray3)

//6th variant
var myArray11: Array = [1, 2, 3]
var myArray12: Array = [4, 5, 6]
let mergedArray4 = [myArray11, myArray12].reduce([], { (result: [Int], element: [Int]) -> [Int] in
    return result + element
})
print(mergedArray4)


    //8. Write a closure to sum 2 integers, pass closure as argument to function, where return the result of calling that closure.

func makeSum () -> (_ a: Int, _ b: Int) -> Int {
    return  {(a,b) in a + b}
}


let sumFunc = makeSum()
print(sumFunc(5, 7))




//2

var intC: (Int, Int) -> Int = {int1, int2 in
    return int1 + int2
}

func func1 (int1: Int, int2: Int, closure: (Int, Int) -> Int) {
    let var1 = closure (int1, int2)+10
    print(var1)
}

print (func1(int1: 2, int2: 4, closure: intC))

func func1 (int1: Int, int2: Int) -> Int {
    let var1 = intC (int1, int2)+10
    print(var1)
}

print (func1(int1: 2, int2: 4, closure: (1, 3)))
