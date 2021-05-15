//
//  ViewController.swift
//  LocalNotification
//
//  Created by Chetanjeev Singh Bains on 12/03/21.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func setReminder10sec(){
        Reminder(timeInterval : 10,body: "10 Seconds are Over")
    }
    @IBAction func setReminder30sec(){
        Reminder(timeInterval : 30,body: "30 Seconds are Over")
    }
    @IBAction func setReminder1min(){
        Reminder(timeInterval : 60,body: "60 Seconds are Over")
    }
    @IBAction func setReminder2min(){
        Reminder(timeInterval : 120,body: "120 Seconds are Over")
    }
    @IBAction func setReminder5min(){
        Reminder(timeInterval : 250,body: "250 Seconds are Over")
    }

        
}

extension ViewController : ReminderController{
    func Reminder(timeInterval: Double,body: String) {
        let center = UNUserNotificationCenter.current()
        let content = UNMutableNotificationContent()
        content.body = body
        content.sound = .default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval:timeInterval, repeats: false)
        
        let requests = UNNotificationRequest(identifier: "Reminder", content: content, trigger: trigger)
        
        center.add(requests){ (error) in
            if error != nil {
                print("Error = \(error?.localizedDescription ?? "error local notification")")
            }
        }
        
        UIControl().sendAction(#selector(NSXPCConnection.suspend),
                               to: UIApplication.shared, for: nil)
    }
    
    
}
