//
//  Customer.swift
//  Jenny Project3
//
//  Created by HIND12 on 24/04/1443 AH.
//

import UIKit

class Customer: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    class Customer {

        var name: String
        var age: Int
        let services : [Service]
        var phonenumberphoneNumber : Int
        var password: String
        var description : String {
      
            return " the customer name is \(name) and age is \(age)"
        }
     
    // The customer is trained if he has a gold card with all services at a reduced value and the value of the subscription 50 RS

            func connectig(payment : Int) throws -> String {
                print("\(name) paid \(payment)")
                if (payment>50)  {
                    print("It takes you to the place you want \(payment)")
                } else if (payment < 50) {
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
        
        init (name : String, age : Int, service:[Service],password:String) {
        self.name = name
           self.age = age
         self.services = service
         self.password = password
           }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
