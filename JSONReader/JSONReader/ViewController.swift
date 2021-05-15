//
//  ViewController.swift
//  JSONReader
//
//  Created by Chetanjeev Singh Bains on 10/03/21.
//

import UIKit
import Foundation
import SwiftyJSON

// ***** MARK :- Adding a Structure to Data *****

struct JSONData {
    var row             : Int?
    var cellPhoneNumber : String?
    var emailAddress    : String?
    var name            : String?
    var profileImage    : String?
    var receiverID      : Int?
    var receiverType    : String?
    
    init() {}
    init(playerObj : JSONData){}
}



class ViewController: UIViewController {
    
    var arr = [JSONData]()
    
    @IBOutlet weak var tableView : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ReadJSON()
    }
    
    // ***** MARK :- Loading JSON File *****
    
    func ReadJSON(){
        
        // Link JSON File
        
        guard let fileUrl = Bundle.main.url(forResource: "GetPlayers", withExtension: "json")
        else {return print("Error reading file.")}
        
        do {
            let data = try Data(contentsOf: fileUrl)
            let jsonObject = try JSON(data: data)
            
        // Get data from file
        
            let dataArray = jsonObject["PlayerList"].arrayValue
            for entity in dataArray {
                
                var playerObj = JSONData()
                let rowEntity               = entity["Row"].intValue
                let nameEntity              = entity["Name"].stringValue
                let receiverIDEntity        = entity["ReceiverID"].intValue
                let receiverTypeEntity      = entity["ReceiverType"].stringValue
                let emailAddressEntity      = entity["EmailAddress"].stringValue
                let cellPhoneNumberEntity   = entity["CellPhoneNumber"].stringValue
                let profileImageEntity      = entity["ProfileImage"].stringValue
                
                playerObj.row = rowEntity
                playerObj.name = nameEntity
                playerObj.receiverID = receiverIDEntity
                playerObj.receiverType = receiverTypeEntity
                playerObj.emailAddress = emailAddressEntity
                playerObj.cellPhoneNumber = cellPhoneNumberEntity
                playerObj.profileImage = profileImageEntity
                
                arr.append(playerObj)
            }
            self.tableView.reloadData()
        }
        catch {
           print(error)
        }
    }
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            guard let cell  = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? JSONTableViewCell else {return JSONTableViewCell()}
            
            let tableRow = arr[indexPath.row]
        cell.lblName!.text = String(tableRow.name!)
        cell.lblReceiverID!.text = String(tableRow.receiverID!)
        cell.lblEmailAddress!.text = String(tableRow.emailAddress!)
        cell.lblPhoneNo!.text = String(tableRow.cellPhoneNumber!)
        
            return cell

    }
    
    
}
    

    



