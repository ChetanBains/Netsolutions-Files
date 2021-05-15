//
//  ViewController.swift
//  DogAge
//
//  Created by Chetanjeev Singh Bains on 08/01/21.
//

import UIKit
import Foundation



class ViewController: UIViewController {

    
    @IBOutlet weak var lblOutput: UILabel!
    @IBOutlet weak var inputAge : UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func calcOutput(_ sender: Any) {
        
        let stringAge = Double(inputAge.text!)!
        let calculate = 16 * log(Double(stringAge)) + 31
        
        lblOutput.text! = "\(Int(calculate)) Years Old"
        
    }
    
}

class Singleton1: FileManager{

}
class Singleton2 : UserDefaults{

}

class Singleton3 : UIApplication{

}

class UIAccelerometer{}
//UIAccelerometer is now CoreMotion(CMMotionManager)
class Singleton4 : UIAccelerometer{
    
}

class Singleton5:UIScreen{

}

class Singleton7:NotificationCenter{

}
