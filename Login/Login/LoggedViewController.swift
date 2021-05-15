//
//  LoggedViewController.swift
//  Login
//
//  Created by Chetanjeev Singh Bains on 04/02/21.
//

import UIKit

class LoggedViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func btnLogout(_ sender: Any) {

        dismiss(animated: true, completion: nil)
        UserDefaults.standard.set(false, forKey: "LOGGEDIN")
        
        
    }
    
}
