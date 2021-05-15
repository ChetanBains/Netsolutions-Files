//
//  ProfileController.swift
//  Profile
//
//  Created by Chetanjeev Singh Bains on 29/01/21.
//

import UIKit
import Foundation



class ProfileController : UIViewController {

//    var objModel = ProfileModel(FirstName: "Chetanjeev", LastName: "Bains", CompanyName: "netsolutions", UserName: "Chetanjeev.Singh", Email: "chetanjeev.bains@netsolutions.com" )

    var objModel = ProfileModel()
    var objView = ViewController()
    
    func profileData(){
    
//        objView.firstName?.text = objModel.FirstName
//        objView.lastName?.text = objModel.LastName
//        objView.companyName?.text = objModel.CompanyName
//        objView.userName?.text = objModel.UserName
//        objView.email?.text = objModel.Email
        

        objModel.FirstName = "Chetanjeev"
        let fs = objModel.FirstName
        objView.firstName?.text = fs

        objModel.LastName = "Bains"
        let ls = objModel.LastName
        objView.lastName?.text = ls

        objModel.CompanyName = "netsolutions"
        let cn = objModel.CompanyName
        objView.companyName?.text = cn

        objModel.UserName = "Chetanjeev.Singh"
        let un = objModel.UserName
        objView.userName?.text = un

        objModel.Email = "chetanjeev.bains@netsolutions.com"
        let em = objModel.Email
        objView.email?.text = em

    }
    
}



//protocol controller {
//    func profileData()
//}
//
//
//extension controller {
//
//    func profileData(){
//
//            var objModel = ProfileModel()
//
//        let objView = ViewController()
//
//            objModel.FirstName = "Chetanjeev"
//            let fs = objModel.FirstName
//            objView.firstName?.text = fs
//
//            objModel.LastName = "Bains"
//            let ls = objModel.LastName
//            objView.lastName?.text = ls
//
//            objModel.CompanyName = "netsolutions"
//            let cn = objModel.CompanyName
//            objView.companyName?.text = cn
//
//            objModel.UserName? = "\(String(objModel.FirstName)).\(String(objModel.LastName))"
//            let un = objModel.UserName
//            objView.userName?.text = un
//
//            objModel.Email = "\(String(objModel.FirstName)).\(String(objModel.LastName))@\(String(objModel.CompanyName)).com"
//            let em = objModel.Email
//            objView.email?.text = em
//
//        }
//}
//
//class ProfileController : ViewController , controller{
//
//    func profileData() {}
//
//}

    
