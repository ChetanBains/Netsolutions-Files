

import UIKit


class RegisterViewController: UIViewController, UITextFieldDelegate{
    
    
    @IBOutlet weak var nameRtextField: UITextField!
    @IBOutlet weak var emailRtextField: UITextField!
    @IBOutlet weak var passwordRtextField: UITextField!
    @IBOutlet weak var confirmPRtextField: UITextField!
    @IBOutlet weak var phoneRtextField: UITextField!
    
    @IBOutlet weak var btnCancel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameRtextField.delegate = self
        self.emailRtextField.delegate = self
        self.passwordRtextField.delegate = self
        self.confirmPRtextField.delegate = self
        self.phoneRtextField.delegate = self
        

    }
    
    //<---------------------------- When we touch ouside keypad ------------------------------------->
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    
    //<------------------------- Movement from one TextField to Another -------------------------------->
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if(textField == nameRtextField){
            nameRtextField.resignFirstResponder()
            emailRtextField.becomeFirstResponder()
        }
        if(textField == emailRtextField){
            emailRtextField.resignFirstResponder()
            passwordRtextField.becomeFirstResponder()
        }
        if(textField == passwordRtextField){
        passwordRtextField.resignFirstResponder()
        confirmPRtextField.becomeFirstResponder()
        }
        if(textField == confirmPRtextField){
        confirmPRtextField.resignFirstResponder()
        phoneRtextField.becomeFirstResponder()
        }
        if(textField == phoneRtextField){
        phoneRtextField.resignFirstResponder()
        }
        return true
    }
    
    //<--------------------------------- Cancel button to clear textfields ------------------------>
    
    @IBAction func btnCancelfunc(_ sender: UIButton) {
        if((btnCancel) != nil){
            nameRtextField.text   = ""
            emailRtextField.text  = ""
            passwordRtextField.text = ""
            confirmPRtextField.text = ""
            phoneRtextField.text = ""
        }
    }
    
    //<----------------------- Validation to check if all textfields are filled ------------------------>
    
    @IBAction func btnSubmitValidation(_ sender: UIButton) {
        if(nameRtextField.text == "" || emailRtextField.text == "" || passwordRtextField.text == "" || confirmPRtextField.text == "" || phoneRtextField.text == ""){
            
            let myAlert = UIAlertController(title: "Alert", message: "Please fill all the credentials", preferredStyle: UIAlertController.Style.alert)
            let okayAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler:nil)
            myAlert.addAction(okayAction)
            self.present(myAlert, animated: true, completion: nil)
            
        }
    }
    
    //<------------------- validate the number of characters in password textfield < 8 ------------------>
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        
        if((passwordRtextField.text!.count) > 7 || (confirmPRtextField.text!.count) > 7){
            return false
        }
        else{
            return true
        }
    }
    
    //<------------------------- View frame shift when keyboard appears ------------------------------>
    
//
//    @objc func keyboardWillShow(notification: NSNotification) {
//       if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
//            if self.view.frame.origin.y == 0 {
//                self.view.frame.origin.y -= keyboardSize.height
//            }
//        }
//    }
//
//    @objc func keyboardWillHide(notification: NSNotification) {
//        if self.view.frame.origin.y != 0 {
//            self.view.frame.origin.y = 0
//        }
//    }

//    @IBAction func txtFieldPhoneKey(_ sender: UITextField) {
//
//
//    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
//        if self.view.frame.origin.y == 0 {
//            let keyboardRectangle = keyboardFrame.cgRectValue
//            let keyboardHeight = keyboardRectangle.height
//            self.view.frame.origin.y -= keyboardHeight.height
//        }
//    }
//    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
//        if self.view.frame.origin.y != 0 {
//                   self.view.frame.origin.y = 0
//        }
//    }
//
//    @IBAction func txtFieldPhoneKey(_ sender: UITextField) {
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
//            NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
//    }
}


