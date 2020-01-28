import UIKit

class Person {
    
//    var name = "None" - ok
    var name: String //if not optional it should contain a value!!! a value, should be initialized with a data
    var netWorth:Int? // optional
    var gender:String! //unwrapped optional
    
//    designated initializer ensure that the object is ready to be used and all of its properties are initialized
    
    init() {
        name = "None"
    }
    
    convenience init(_ gender:String, _ netWorth:Int) {
//        call the designated inititalizer to ensure that the object is ready to go
        init()
        
//        set any other properties or custom code to initialize for this scenario
        self.gender = gender
        self.netWorth = netWorth
    }
}

//Person()
//creating a new person object
let a = Person()
print(a.name)
print(a.netWorth)

//creating a new rich person object
let b = Person("Male", 109898754)
let c = Person("Female", 109898754)


//convenience initializers are for you to preconfigure in a certain way
//they may rely on a designated initializer to ensure that the object is ready to be used
