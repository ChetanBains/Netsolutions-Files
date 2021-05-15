//
//  ViewController.swift
//  BinaryFramework
//
//  Created by Chetanjeev Singh Bains on 23/03/21.
//

import UIKit
import ObjCTest

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let objC = TestClass()
       objC.hello(withText: "world")
        
    }


}

