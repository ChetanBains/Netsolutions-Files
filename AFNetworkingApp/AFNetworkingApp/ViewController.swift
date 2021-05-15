//
//  ViewController.swift
//  AFNetworkingApp
//
//  Created by Chetanjeev Singh Bains on 23/03/21.
//

import UIKit
import FrameworkObjC

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let AfNetworking = AFNetworkingApp()
        // Do any additional setup after loading the view.
        var url = URL(string: "https://jsonplaceholder.typicode.com/todos/1")!
        var request = NSURLRequest(url: url)
        var operation = AFHTTPRequestOperation(request:request)
        operation.responseSerializer = AFJSONREsponseSerializer()
        
    }


}

