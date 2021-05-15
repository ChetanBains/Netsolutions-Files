//
//  ViewController2.swift
//  simplePassing
//
//  Created by Chetanjeev Singh Bains on 09/03/21.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var txtFieldName: UITextField!
    @IBOutlet weak var txtFieldAge: UITextField!
    @IBOutlet weak var txtFieldEmail: UITextField!
    
    let vc = ViewController()
    
    public var name : String!
    public var age : String!
    public var email : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didGoBack(_ sender: Any) {
        name = txtFieldName.text!
        age = txtFieldName.text!
        email = txtFieldName.text!
        
        if let ds = vc.lblName{
        vc.lblName.text! = name
        }else {print("Crash")}
        
        if let dsda = vc.lblAge{
        vc.lblAge.text! = age
        }else {print("Crash")}
        
        if let dssacs = vc.lblEmail{
            vc.lblEmail.text! = email
        }else {print("Crash")}
        
        dismiss(animated: true, completion: nil)
    }
    
}
