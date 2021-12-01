//
//  ScheduleVC.swift
//  ProjectToDoList
//
//  Created by Njoud Alrshidi on 23/04/1443 AH.
//

import UIKit
import UserNotifications

class ScheduleVC: UIViewController {

    @IBOutlet weak var titelTF: UITextField!
    @IBOutlet weak var messageTF: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    let notificationCenter = UNUserNotificationCenter.current()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notificationCenter.requestAuthorization(options: [.alert , .sound] ) { (permissionGranted , error) in
            if (!permissionGranted)
            {
                print("Permission Denied")
            }
            
            
        }

    }
    

    @IBAction func scheduleAction(_ sender: Any) {
        notificationCenter.getNotificationSettings { (settings) in
            DispatchQueue.main.async {
                let title = self.titelTF.text!
                let message = self.messageTF.text!
                let date = self.datePicker.date
                
                if(settings.authorizationStatus == .authorized) {
                  
                    let content = UNMutableNotificationContent()
                    content.title = title
                    content.body = message
                    
                    let dateComp = Calendar.current.dateComponents([.year , .month , .day , .hour , .minute], from: date)
                    
//                    let dateComp2 = Calendar.current.dateComponents([.day], from: date)
                    
                    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComp, repeats: false)
                    
                    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                    
                    self.notificationCenter.add(request) { (error) in
                        if(error != nil){
                            print("Error" + error.debugDescription)
                            return
                        }
                        
                    }
                    
                    let ac = UIAlertController(title: "Notification Scheduled", message: "At " + self.formattedDate(date: date), preferredStyle: .alert)
                    ac.addAction(UIAlertAction(title: "ok", style: .default, handler: {(_) in}))
                    self.present(ac , animated: true)
                }
                else {
                    let ac = UIAlertController(title: "Enable Notification ?", message: "To use this feature you must enable notifications in settings", preferredStyle: .alert)
                    let goToSettings = UIAlertAction(title: "Settings", style: .default)
                    { (_) in
                        guard let settingsURL = URL(string: UIApplication.openSettingsURLString)
                        else { return }
                        
                        if (UIApplication.shared.canOpenURL(settingsURL)) {
                            UIApplication.shared.open(settingsURL) { (_) in }
                        }
                    }
                    
                    ac.addAction(goToSettings)
                    ac.addAction(UIAlertAction(title: "cancel", style: .default, handler: { (_) in }))
                    self.present(ac , animated: true)
                    }
                 }
            }
        }
                                           
func formattedDate(date : Date) -> String {
       let formatter = DateFormatter()
       formatter.dateFormat = "d MMM y HH:mm"
       return formatter.string(from: date)

    }
}
                                         
