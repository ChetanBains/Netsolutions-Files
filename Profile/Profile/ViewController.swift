//
//  ProfileView.swift
//  Profile
//
//  Created by Chetanjeev Singh Bains on 29/01/21.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var firstName          : UILabel!
    @IBOutlet weak var lastName           : UILabel!
    @IBOutlet weak var companyName        : UILabel!
    @IBOutlet weak var userName           : UILabel!
    @IBOutlet weak var email              : UILabel!
    @IBOutlet weak var circularImageView  : UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        circularImageView.layer.cornerRadius = circularImageView.frame.size.width/2
        circularImageView.clipsToBounds = true
        
        getter()
        setter()
    }
    
    let obj = ProfileModel()
    
    func getter(){
        
        obj.FirstName    =   "Chetanjeev"
        obj.LastName     =   "Bains"
        obj.CompanyName  =   "netsolutions"
        obj.UserName     =   "chetanjeev.singh"
        obj.Email        =   "chetanjeev.singh@netsolutions.com"
    }
    
    func setter(){
        
        firstName!.text   =   obj.FirstName
        lastName!.text    =   obj.LastName
        companyName!.text =   obj.CompanyName
        userName!.text    =   obj.UserName
        email!.text       =   obj.Email
    }
}
