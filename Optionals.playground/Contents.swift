import UIKit

var l: Int = 0
var k: String = "Joe"

//nil - empty - no info
// ? - optional:  either info or nil

var w: Int? = nil

var t: String? = nil


class XmasPresent {
    
    func surprise() -> Int {
        return Int.random(in: 1...10)
    }
}

var present1:XmasPresent? = nil

var present2:XmasPresent! = nil

present1?.surprise()


let present: XmasPresent? = nil

//you should always check if an optional contains nil or not before trying to use it
//check the optional to see  if it contains an object
//1st variant: if present == nil {
////    it contains nil
//} else {
////    it contains an object
//}

if present != nil {
//    it contains an object
//    call the surprise function
    
//   !!! before you can access the object of an optional variable or constant, you must first "unwrap" the optional
    print(present!.surprise())
}

//optional binding
if let actualPresent = present {
    
    print(actualPresent.surprise())
}

//optional chaining
present?.surprise()

//c can store a string or nil, but it is wrapped
var a: String?

//d can store a string or nil, but it is already unwrapped
var d:String!
