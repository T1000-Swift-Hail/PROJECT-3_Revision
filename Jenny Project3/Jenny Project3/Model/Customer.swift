//
//  Customer.swift
//  Jenny Project3
//
//  Created by HIND12 on 24/04/1443 AH.
//

import UIKit

protocol person {
    var name : String {get}
    var age : Int {get}

}
enum Payment : Error {
    case paymentLow
    case paymentHigh
}

//vare current delivery: delivery?
// current delivery = get deliveryFromServer ()
//func get deliveryFromServer ()-> delivery? {
// return  nil
//}
// var current delivery = get deliveryFromServer ()
// switch current delivery ?? delivery.
//

class Customer {

    var name: String
    var age: Int
    let services : [Service]
    var phoneNumber : Int
    var password: String
    var description : String
  init(name:String, age:Int ,services:[Service],phoneNumber:Int,password:String,description: String) {
      self.name = name
     self.age = age
 self.services = services
        self.phoneNumber = phoneNumber
        self.password = password
        self.description = description
    }
  
    
    // The customer delivers the customer to the desired location
    
    // The start of the trip is 3 saudi riyals,and according to the duration of the trip the price is determined the customer must be over 15 years old and not receive without that

            func connectig(payment : Int) throws -> String {
                
                let myPayment = Payment.paymentLow

        switch myPayment {
                case Payment.paymentLow:
                    print("Low")
                case Payment.paymentHigh:
                   print("High")
                }

                
         print("\(name) paid \(payment)")
                if (payment>3)  {
                    print("It takes you to the place you want \(payment)")
                } else if (payment < 15) {
                    print("It takes you to the place you want  \(payment)")
                }else {
                }
                return ""
            }
            
            func connectig(){
           print("\(name) is connectig ...")
            }
            
            func printServices() {
               
       for service in services {
    print("It takes you to the place you want \(name) is:\(service.name),\(service.price),\(service.description)")
               }
           }
        

    }
   
    

     

        
   
    

    
    

