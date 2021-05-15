//
//  ViewController.swift
//  CustonAlert
//
//  Created by Chetanjeev Singh Bains on 19/03/21.
//

import UIKit
import SCLAlertView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func didTap(){
        //SCLAlertView().showInfo("Important info", subTitle: "You are great")
        let alertViewResponder: SCLAlertViewResponder = SCLAlertView().showSuccess("Hello World", subTitle: "This is a more descriptive text.")

        // Upon displaying, change/close view
        alertViewResponder.setTitle("New Title") // Rename title
        alertViewResponder.setSubTitle("New description") // Rename subtitle
        //alertViewResponder.close() // Close view
    }

}

