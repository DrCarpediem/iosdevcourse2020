import UIKit
/*:
1.
 - Объявите одну константу x типа Int
 - Объявите переменную y типа Double
 - Объявите переменную sum типа Optional-Int  без начального значения
 - Присвойте sum значение равное сумме x и y
 */

let x: Int = 1
var y: Double = 1.1
var sum:Int?
sum = x + Int(y)

/*:
 2. Разверните опционал sum и выведите в консоль. Обратите внимание чтобы в выводе отсутствовало Optional()
 */

if sum != nil {
    print(sum ?? "sum is nil")
}

/*:
 3. Выведите в консоль четные числа от 2 до 2000
 */

var numbers = [Int]()
for i in 2...2000 {
  if i % 2 == 0 {
    numbers.append(i)
  }
}
print(numbers)

/*:
 4. Объявите новый тип ColorTuple, который является tuple из четырех компонентов (3 для цвета и один для прозрачности)
 Объявите переменную myColor типа ColorTuple?
 Задайте ей значение
 */

var colorTuple = (white: 255, red: 2, blue: 4, alpha: 1.0)
var myColor = colorTuple.0

/*:
 5. Объявите функцию, которая получет на вход 3 параметра типа Int и возвращает результат типа ColorTuple
 */

func color() -> (white: Int, red: Int, blue: Int) {

    let color1 = 255
    let color2 = 2
    let color3 = 4

    return (color1, color2, color3)
}

let myNewColor = color()
print(myNewColor)

/*:
 7. Напишите функцию, которая получает на вход Имя и Фамилию человека и возвращает tuple (String, String) с именем и фамилией
 */

func nameSurname() -> (String, String) {

    let name = "Имя"
    let surname = "Фамилия"
    return (name, surname)
}

let myName = nameSurname()
print(myName)

/*:
 8. Напишите функцию, которая получает на вход массив [String?] и возвращает массив [String], в котором выброшены все nil значения из первого массива

 Например из массива
 ["a", nil, "b"] получится массив ["a", "b"]

 */

var optionalArray: [String?] = ["a", nil, "b"]


func filtered() -> [String] {

    let filteredArray = optionalArray.compactMap{ $0 }
    return(filteredArray)
}

let filteredArray = filtered()
print(filteredArray)

