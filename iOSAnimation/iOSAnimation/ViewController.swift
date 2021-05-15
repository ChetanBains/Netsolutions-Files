//
//  ViewController.swift
//  iOSAnimation
//
//  Created by Chetanjeev Singh Bains on 16/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK :- Button Constraints
    
    @IBOutlet var btnLoginConstraint : NSLayoutConstraint!
    @IBOutlet var imageView : UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        btnLoginConstraint.constant -= view.bounds.width
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1.5, delay: 1, options: .curveEaseOut, animations: {
            self.btnLoginConstraint.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }
        , completion: nil)
        
        let options: UIView.AnimationOptions = [.curveEaseInOut,
                                                    .repeat,
                                                    .autoreverse]
        UIView.animate(withDuration: 2.9,
                           delay: 0,
                           options: options,
                           animations: { [weak self] in
                            self?.imageView.frame.size.height *= 1.2
                            self?.imageView.frame.size.width *= 1.2
            }, completion: nil)
    }


}

