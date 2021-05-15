//
//  ViewController.swift
//  SwaggerYAML
//
//  Created by Chetanjeev Singh Bains on 01/04/21.
//

import UIKit

class ViewController: UIViewController {

    var arrayDataPostsGet = [DemoPost]()
    var arrayDataAlbumPost = [DemoAlbum]()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        }

    @IBAction func didTap1(){
        
//        var userID : Int!
//        var iD : Int!
//
//        let alert = UIAlertController(title: "Calendrific", message: "Fill the credentials.", preferredStyle: .alert)
//
//        alert.addTextField { (textField) in
//            textField.placeholder = "UserID"
//        }
//
//        alert.addTextField { (textFields) in
//            textFields.placeholder = "ID"
//        }
//
//        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action: UIAlertAction!) in
//            if userID != nil {
//                userID = Int(alert.textFields![0].text!)
//            }else {return print("error 1")}
//            //iD = Int(alert.textFields![1].text!)
//            if iD != nil {
//                iD = Int(alert.textFields![0].text!)
//            }else {return print("error 2")}
//        }))
//
//        self.present(alert, animated: true)
        
        JSONPlaceholderResourcePostAPI.postsGet(userId: 2, _id: 15) { (objData :[DemoPost]?, error: Error?) in
        print(objData!)
        if let objdata = objData {
            self.arrayDataPostsGet = objdata
            print(self.arrayDataPostsGet)

            }
        }
    }
    @IBAction func didTap2(){
        
    }
    @IBAction func didTap3(){
    
    JSONPlaceholderResourceAlbumAPI.albumsIdGet(_id: 3) { (data:[DemoAlbum]?,error: Error?) in
    
        }
        
    }
}
