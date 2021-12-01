import UIKit

var number:Float

let nameArr = ["one","two","three","four","five"]
for names in nameArr {
    print(names)
}


func numbers(i: Int, j:Int) -> Int {
    return 1
}

let abdullah = "Abdullah"

for letters in abdullah {
    print(letters)
}

let gradeOne = 94
let gradeTwo = 80
if gradeOne > gradeTwo {
    print(gradeOne)
} else if gradeTwo > gradeOne {
    print(gradeTwo)
} else {
    print("equal")
}


enum Payment {
    case visa
    case mastercard
    case applepay
}

var buy:Payment = .mastercard

class Animal {
    var name:String
    var age:Int
    
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
    func printInfo(name:String,age:Int) {
        print("\(name),\(age)")
    }
}
//var f = Animal()
//print(f.name)
//print(f.age)

struct Person {
    var clothes:[String]
    var shoes:String
}


let trafficLight = "Red"

switch trafficLight {
case "Red":
    print("Stop")
case "Yellow":
    print("Slow Down")
case "Green":
    print("Go")
default:
   " "
}

let age:Int? = 22
print(age!)


let studentGrades: [String:Int] =  ["student1":90,"student2":80,"student3":70]


var happy = {
    print("Happy birthday")
}

happy()

class Rectangle {
    var width:Double = 5.5
    var height:Double = 6.6
    
    var area:Double {
        return width*height
    }
}

let printArea = Rectangle()
print(printArea.area)

protocol Flyable {
    func traveler()
}

struct Plane:Flyable {
   
    func traveler() {
        print("Hello Travelers")
    }
    
}

class Airplane {
    
}

extension Airplane {
    func travelers() {
        print("Hello I'm a Warlock")
    }
}
