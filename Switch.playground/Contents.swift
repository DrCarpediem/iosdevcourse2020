import UIKit

var str = "Hello, playground"

let chr = "a"

if chr == "a" {
    print("the character is a")
}

else if chr == "b" {
    print("the character is b")
}


switch chr {
case "a":
    print("this is an a")
    case "b", "c":
    print("this is an b or c")
default:
    print("this is the fallback")
}
