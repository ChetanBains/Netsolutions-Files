//
//  ViewController.swift
//  Multithreading
//
//  Created by Chetanjeev Singh Bains on 02/03/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
                var n :Int    = 2
                var value : Int = 1
          
                DispatchQueue.main.async {
                  debugPrint("printing table of \(n)")
                    for i in 1...10 {
                        value = i
                        print(n*i)
                        print("hello")
                    }
                }

                for i in 0...10 {
                    n = i
                    print("Value = \(n)")
                }
          
          
                DispatchQueue.main.async {
                    n = 9
                    print(n)
                }
        
            }
        
       
        }

    





