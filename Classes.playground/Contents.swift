import UIKit

//a class definition is like a template or blueprint

class Person {
    
    var name = ""
    
//    init() {
//
////        custom init code, don't need "func"
//        name = "Joe"
//    }
    init() {

    }

    init(_ name: String){
        self.name = name
    }
}

class Employee: Person {
// properties
    var salary = 0
    var role = ""
    
    override init(_ name: String) {
//        this is calling the init(_ name: String) function of the Person class
        super.init(name)
//        additional init code
        self.role = "Analyst"
    }
    
// methods
    func doWork() {
        print("Hi my name is \(name) and I'm doing work")
        salary += 1
    }
    
}

//when you create an actual instance of the class that instance is called an object

let a: Int = 10
let b: String = "Ted"
let c: Employee = Employee("")

c.name = "Tom"
c.role = "Art Director"
c.salary = 1000
print(c.salary)

c.doWork()

var d = Employee("")
d.name = "Sarah"
d.role = "Manager"
d.salary = 1000

d.doWork()

//Class Inheritance - Subclasses

class Manager: Employee {
    
    var teamSize = 0
    
    override func doWork() {
//        it executes the doWork from employee
        super.doWork()
//      and after that add these code to doWork function
        print("I'm managing people")
        salary += 2
    }
    
    func firePeople() {
        print("I'm firing people")
    }
    
}

var m = Manager("")
m.name = "Maggie"
m.salary = 2000
m.role = "Manager of IT"
m.teamSize = 10
m.doWork()
m.firePeople()

var e = Employee("")


let myPerson = Person ("Tom")
print(myPerson.name)

let myEmployee = Employee ("Joe")
print(myEmployee.name)
print(myEmployee.role)

