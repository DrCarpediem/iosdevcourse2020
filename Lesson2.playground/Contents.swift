
//class Play {
//    func playground() {
//       integer = 10
//    }
//
//    var integer: Int = 0
//}
let constInteger: Int = 10
//= - оператор присваивания
//константа типа Integer - целочисленный тип от - 2147483648 до 2147836647
//можно писать: let constInteger = 0
constInteger
//constInteger = 1  - Cannot assign to value: 'constInteger' is a 'let' constant

//let constDouble: Double = 0.0
let constMaxUInt: UInt = UInt.max
//максимально возможное значение UInt - не может быть отрицательным
constMaxUInt
let newConst = constInteger
newConst
var variable: Int =  constInteger
variable = 55
variable
var variable2 = variable + 1
variable2
variable - 10
variable
var multiply = variable2 * variable
var division = variable / 5
var rest = variable % 10
var double1: Double = 55
var doubleDivision = double1 / 12
var casted = Double(variable)

//0.000000 float
//0.000000000000 double

variable == variable2
//== оператор равенства
variable >= variable2
//>, <, <=

variable != variable2
//!= - не равны

variable *= 2
variable += 200
variable /= 200
variable -= 200

var boolean1: Bool = true
boolean1
boolean1 == true
boolean1 != true
var opposite = !boolean1

var string: String = "qwesdf\nds"
print (string)

var newLine = "\n"
var string2 = "string"

string+newLine+string2
