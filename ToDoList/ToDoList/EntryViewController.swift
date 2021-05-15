//
//  EntryViewController.swift
//  ToDoList
//
//  Created by Chetanjeev Singh Bains on 15/03/21.
//

import UIKit
import RealmSwift

class EntryViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var textField : UITextField!
    @IBOutlet var datePicker : UIDatePicker!
    
    private var realm = try! Realm()
    public var completionHanler: (() -> Void)

    override func viewDidLoad() {
        super.viewDidLoad()

        textField.becomeFirstResponder()
        textField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func didSaveButton(){
        
    }

}
