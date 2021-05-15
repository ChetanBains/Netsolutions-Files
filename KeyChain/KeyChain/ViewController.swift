//
//  ViewController.swift
//  KeyChain
//
//  Created by Chetanjeev Singh Bains on 16/02/21.
//

import UIKit
import KeychainSwift

class ViewController: UIViewController {
    
    @IBOutlet var lblUsername: UITextField!
    @IBOutlet var lblPassword: UITextField!
    
    let keychain = KeychainSwift()
    let defaults = UserDefaults.standard
    var isSaved = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTap() {
        
        let username = lblUsername.text!
        let password = lblPassword.text!
        
        if(username != "" && password != "") {
            defaults.setValue(username, forKey: "user")
            keychain.set(password, forKey: "pass")
            lblUsername.text! = ""
            lblPassword.text! = ""
            isSaved = true
        }
        else {
            self.okAlert(title: "Error", message: "Please fill all fields")
        }
        
    }
    
    @IBAction func didRetrieveData(){
        if(isSaved == true) {
            let userString = UserDefaults.standard.string(forKey: "user")!
            self.lblUsername.text! = userString
                    
            let userPassword = keychain.get("pass")!
            self.lblPassword.text! = userPassword
        }
        else {
            self.okAlert(title: "Error", message: "No data to be retieved")
        }
    }
}

extension UIViewController {
    func okAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
        
