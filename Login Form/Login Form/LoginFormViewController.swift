

import UIKit

class LoginFormViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var btnCancel: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        

    }
    
    //<-------------------------------- When we touch ouside keypad ---------------------------------->
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    //<----------------------------- Movement from one TextField to another ----------------------------------->
//
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        if(textField == emailTextField){
        emailTextField.resignFirstResponder()
        passwordTextField.becomeFirstResponder()

        }
        if (textField == passwordTextField){
        passwordTextField.resignFirstResponder()
        }
        return true;
    }
//
    //<------------------------------- Cancel button to clear textfields ---------------------------->
    
    @IBAction func btnCancelFunc(_ sender: UIButton) {
        if((btnCancel) != nil){
            emailTextField.text = ""
            passwordTextField.text = ""
        }
        
    }
    
    //<----------------------- Validation to check if all textfields are filled ------------------------>
    
    @IBAction func btnLoginValidation(_ sender: UIButton) {
        if(emailTextField.text == "" || passwordTextField.text == ""){
            
            let myAlert = UIAlertController(title: "Alert", message: "Please fill all the credentials", preferredStyle: UIAlertController.Style.alert)
            let okayAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            myAlert.addAction(okayAction)
            self.present(myAlert, animated: true, completion: nil)
            
        }
      }
    
    //<---------------------- Validates the number of characters in password textfield < 8 --------------------->
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if((passwordTextField.text!.count) > 7){
            return false
        }
        else{
            return true
        }
    }
    
}

    
    


