import UIKit

var greeting = "Hello, playground"

// creat a Float numbet in swift ?
var num : Float = 0.0

// subject: Array & Loop
// coplete the following code to print each element of the array
let namArr = ["one","tow","there"]

for i in namArr {
    print (i)
}
// creat a functon that takes two Int parameters and returns Int?

func car (name : Int , age : Int) -> Int {
//    return 0
    return name+age
}


//print the letters of the name "Abdullah" using Loop ?
var name1 = "Abdullah"
for n in name1 {
    print(n)
}

// suject : conditionals
// let gradeOne = 94  , let gradeTow = 80
// write a code to print the greater number : if the first is greater, the print the second . And if they are equal print "equal"

let gradeOne = 94
let gradeTow = 80

 if gradeOne > gradeTow {
    print (gradeOne)
}
else if gradeOne < gradeTow {
    print (gradeTow)
}
else{
    print ("Equal")
}

// creat enum that involves three cases, then create a variable that has one of thes cases as it value.

enum Boo {
    case B
    case O
    case OO
}
var frot : Boo = .B
var fro = Boo.O

// class:

//class Animal {
//    let name :String
//    let age : Int
//
//init( name : String , age : Int){
//    self.name = name
//    self.age = age
//}
//func printNandG(){
//    print("\(name), \(age)")
//}
//}

// create a person struct type that contans two properties :
// clothes of type arrays of string and shoes of type string"

//struct Person {
//
//    var closthes :[String]
//    var shoes : string
//}

// subject : Switch


// ues switch case to  a var name tr ........


//var trafic = "Red"
//
//switch trafic {
//case "green" :
//    print("go")
//case "yellow" :
//    print("slow done")
//case "red" :
//    print("go")
//default:
//    print("relax")
//}

//subject : Optional
//let age : Int? = 22
//print the age using force unwarp

//let age : Int? = 22
//print(age!)
//print(age ?? "") soft ...



//subject : dectionary
//
//create a dic studentGrades with Key of type "string" and vale of type "Int "And add values to the studentGrades

//var studentGrades : [String:Int] = ["key": 0 ]
//
//
//studentGrades["hgff"] = 5

// subject : closeure
// write a variable with a closure type that print "Happy birthday!"
//
//var printhpyprith = {
//    print("Happy birthday!")
//}
//printhpyprith()
////
///
///*******
///: comuted Properties
///
///
///write a var inside the fo ....
///
///


//
//class rectangle {
//    var width : Double = 5.5
//    var height : Double = 6.6
//
//    var area : Double {
//        return width*height
//    }
//}


// subject : protocols
// write a protocol with the name Flyable >>>>


//protocol Flyable{
////    var nad : String = {get}
//    func plane ()
//}
//    struct Plane : Flyable {
//        func plane() {
//            print (">>")
//        }
//    }

//class / extension
//assume that we have a class named Airplane an extra function to that class 



class Airplane {
    
    
}
extension Airplane {
    func play (){
        
    }
}
