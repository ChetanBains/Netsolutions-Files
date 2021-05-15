//
//  InsertDataViewController.swift
//  delegateAssignment
//
//  Created by Chetanjeev Singh Bains on 09/03/21.
//

import UIKit

protocol UserDataDelegate {
    
    func sendData(name:String,age:String,email:String)
}

class InsertDataViewController: UIViewController {
    
    @IBOutlet weak var txtFieldName :  UITextField!
    @IBOutlet weak var txtFieldAge :   UITextField!
    @IBOutlet weak var txtFieldEmail : UITextField!
    
    var delegate: UserDataDelegate?
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapDoneIDVC(){

        if(txtFieldName.text == "" || txtFieldAge.text == "" || txtFieldEmail.text == ""){
            self.okAlert(title: "Error", message: "Please enter your credentials")
        }
        
        if let ifletdelegate = delegate {
            ifletdelegate.sendData(name: txtFieldName.text! , age: txtFieldAge.text! , email: txtFieldEmail.text!)
        }else{print("Crashed")}
        
        dismiss(animated: true, completion: nil)
    }
}

extension UIViewController {
    func okAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
