//
//  ViewController.swift
//  AlamofirePod
//
//  Created by Chetanjeev Singh Bains on 22/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    private var request = RequestController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        request.fetchData()
    }


}

