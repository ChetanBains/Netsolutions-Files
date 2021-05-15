//
//  ViewController.swift
//  simplePassing
//
//  Created by Chetanjeev Singh Bains on 09/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didSend(_ sender: Any) {
        performSegue(withIdentifier: "viewcontroller2", sender: self)
    }
    
}

