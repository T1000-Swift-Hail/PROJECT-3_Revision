
//Creat a Float-type varible in swift?

var number : Float = 20

print("************************")

//cpmplet the follwing code to print each element of the array.
//let nameArr = ["one","tow","three","four","five"]
let nameArr = ["one","tow","three","four","five"]
for number1 in nameArr {
   print(number1)
}

//

func numbers (one:Int , tow:Int) -> Int{

   return 2
}
    
//** return لازم اعطيه قيمه من نوع رقم

print("************************")



let name : String = "Abdullah"
for later in name {
    print(later)
}



print("************************")

//مراجعة المقارنه

let gradeOne = 94
let gradeTow = 80

if gradeOne > gradeTow {
    print(gradeOne)
}
else if gradeTow > gradeOne {
    print(gradeTow)
}
else {
    
    print("equal")
}




print("************************")


enum Drinks  {
    case Cofe
    case Tea
    case Milk
}
var myDrinks : Drinks = .Cofe
var myDrink = Drinks.Cofe



print("************************")


class Animal {
    
    let name : String = "Cat"
    let  age : Int = 2

    
   /* init(name:String,age: Int){
        self.name = name
        self.age = age
    }

    func animal1(){
       
       print("")
       
    }

}
*/
}

print("************************")

struct Person {
    
   var clothes : [String]
    var shoes : String

}
print("************************")

 /*
   var  trafficLight = "Red"
    switch trafficLight {

    case: "Grean":
  print("GO!")
    case: "Grean"
  
    case: "Yallow"
}
*/

print("************************")

let age: Int? = 22
print(age!)

var studentGrades : [String:Int] = ["student1":12,"student":20]
var printhaby = {
    
    }

print("************************")

class Rectangel {
    var width:Double = 5.5
    var height:Double = 6.6

    var area : Double {
        return width*height
    }
}

print("************************")

protocol Flyble {

  func canFly()
}
struct Plane: Flyble {
    func canFly() {
        print("I can Fly")
    }
}
print("************************")

class Airplane {
    
}
extension Airplane {
    func plan(){
  }
}




