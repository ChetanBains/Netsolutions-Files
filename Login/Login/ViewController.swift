//
//  ViewController.swift
//  Login
//
//  Created by Chetanjeev Singh Bains on 04/02/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnCheckBox: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
// <------------ Calling Responders of Textfield ---------------->
        
        self.txtUsername.delegate = self
        self.txtPassword.delegate = self
        
// <------------ (End) Calling Responders of Textfield ---------------->
        
// <------------ Adding CALayer for textFieldLayer ---------------->
        
        let bottomLineUsername = CALayer()
        bottomLineUsername.frame = CGRect(x: 0, y: txtUsername.frame.height-4 , width:txtUsername.frame.width , height:2)
        bottomLineUsername.backgroundColor = UIColor.init(red: 178/255, green: 34/255, blue: 34/255, alpha: 1).cgColor
        
        txtUsername.borderStyle = .none
        txtUsername.layer.addSublayer(bottomLineUsername)
        
        
        let bottomLinePassword = CALayer()
        bottomLinePassword.frame = CGRect(x: 0, y: txtPassword.frame.height-2 , width:txtPassword.frame.width , height:2)
        bottomLinePassword.backgroundColor = UIColor.init(red: 178/255, green: 34/255, blue: 34/255, alpha: 1).cgColor
        
        txtPassword.borderStyle = .none
        txtPassword.layer.addSublayer(bottomLinePassword)
        
// <------------ (End) Adding CALayer for textFieldLayer ---------------->
        
    }
    
    
//<---------------- When we touch ouside keypad ------------------->
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    
//<----------------(End) When we touch ouside keypad ------------------->
    
//<------------ Movement from one TextField to another --------------->
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {


        if (textField == txtUsername){
            txtUsername.resignFirstResponder()
            txtPassword.becomeFirstResponder()
        }

        if (textField == txtPassword){
            txtPassword.resignFirstResponder()
        }

        return true
    }
    
//<------------ (End) Movement from one TextField to another --------------->
    
    
//<------------------ Button Login Validation -------------------->
    
    @IBAction func btnloginVerification(_ sender: Any) {
        
        if ((txtUsername.text?.lowercased() == "chetanjeev.bains@netsolutions.com") && (txtPassword.text == "123456"))
        {
            performSegue(withIdentifier: "loginEntry", sender: self)
        }
        else
        {
            let alertLoginError = UIAlertController(title: "Invalid", message: "Please enter correct credentials.", preferredStyle: UIAlertController.Style.alert)
            alertLoginError.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default, handler: nil))
            self.present(alertLoginError, animated: true, completion: nil)
        }
    }
    
//<------------ (End) Button Login Validation --------------->
    
    
//<-------------------------- Checkbox Validation Login  ------------------------>
    
    let checked = UIImage(named: "CheckEmpty")! as UIImage;
    let unchecked = UIImage(named: "CheckFill")! as UIImage;
    
    @IBAction func btnCheckBoxClicked(_sender : UIButton){
        
        print("In Outside Case  : \(_sender.tag)")
        
//<------------ SwitchCases in Checkbox Validation Login  --------------->
        
        switch _sender.tag {
        case 0:
            print("In Case 0 Before : \(_sender.tag)")
            btnCheckBox.setImage(checked, for: UIControl.State.normal)
            UserDefaults.standard.set(false, forKey: "LOGGEDIN")
            _sender.tag = 1
            print("In Case 0 After : \(_sender.tag)")
        case 1:
            print("In Case 1 Before : \(_sender.tag)")
            btnCheckBox.setImage(unchecked, for: UIControl.State.normal)
            UserDefaults.standard.set(true, forKey: "LOGGEDIN")
            _sender.tag = 0
            print("In Case 1 After : \(_sender.tag)")
        default:
            print("In Default Before : \(_sender.tag)")
            btnCheckBox.setImage(unchecked, for: UIControl.State.normal)
            _sender.tag = 0
            print("In Default After : \(_sender.tag)")
        }
        
//<------------ (End) SwitchCases in Checkbox Validation Login  ------------------>
    }
    
//<--------------------(End) Checkbox Validation Login  ------------------------>
    
}

