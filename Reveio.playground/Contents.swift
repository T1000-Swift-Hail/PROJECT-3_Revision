import UIKit

// subject :Variables
//creat float-type var in swift ?

var number : Float = 2

//subject : array LOOP tkrar
//##complet following code print each element of array. let nameArr = ["one","two","there","fourth","five"]

let nameArr = ["one","two","there","fourth","five"]
for name in nameArr {
print(name)
}

//Subject: function
//##creat a func that takes tow int parameters and return int ?

func numbers(number1: Int, number2: Int) -> Int {
return 1

}

//Subject : LOOP
//print letters od name "abdullah" using loop ?
let name = "Abdullah"
for namees in name {
print(namees)
}

//Subject :conditionals if ######
//let gradeOne = 94 , let gradeTow = 80 write a code to print the greater number; if the first is greater, then print the first. if the second is grester, then print the second.And if they are equal print "equal"
let gradeOne = 94
let gradeTow = 80

if gradeOne > gradeTow {
    print(gradeOne)
}

else if gradeTow > gradeOne {
    print(gradeTow)
}
else {
    print("Egual")
}

//Subject: Enum ####
//creat enum that involves three cases, and creat a varibal that has one of these cases as its value?
enum Cites  {
    
    case Hail
    case Riydh
    case madina
}
var myCities = Cites.Hail

//Subject : ###Class
//creat a class Animal that hase propelty of name and age and func to print the name and age ?

class Animal {
    
    let name : String
    let age : Int
    
    init(name : String , age : Int){
        self.name = name
        self.age = age
    }
    func printNameAge(){
        print("\(name),\(age)")
    }
    }

//Subject : ###Strict
//creat a person struct type that contains tow properties : clothes of type array of string and shose of type string ?

struct Person {
    var clothes : [String]
    var shose : String
}

//subject : ##Switch
//use switch case to varibal name trafficLight and give it a value "Red",if it is Grean print "Go" , and if it's "Yollow "...?

var trafficLight = "Red"
switch trafficLight {
case "Grean" :
    print("GO")
case "Yellow" :
    print("Slow Down")
case "Red":
    print("Stop")
default:
   print("Relax")
}
//enume switch

//subject : ##optionals
//let age : Int? = 22 , print the age using force unwarp

let age : Int? = 22
print(age!)
//soft print (age ?? 0)

//Subject : ##dectionary

var studentGrades:[String:Int] = ["Student1": 12, "Student2" : 13]

//Supject : closures

var birth = {
    print("happy birthday!")
}

birth()

//subject : computed properties

class Rectangle {
    var width : Double = 5.5
    var height : Double = 6.6
    var area : Double {
    return width*height
    }
}

protocol Flyable {
    func canFly()
}

struct Plane : Flyable {
    func canFly() {
        print("you are can flay")
    }
}
    

class Airplane {
    
}

extension Airplane {
    func fly() {
        
    }
}
