//
//  ViewController.swift
//  TableViewMotivator
//
//  Created by Chetanjeev Singh Bains on 15/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView : UITableView!
    
    let names = ["Chetanjeev Singh Bains","Vaibhav Chadha","Stuti Ghai"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        tableView.delegate = self
//        tableView.dataSource = self
     
    }

}


extension ViewController : UITableViewDelegate{
    
    //Selecting Row at Index
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You Tapped ME")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
}

extension ViewController : UITableViewDataSource{
   
    // No of Sections
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Hello"
    }
    
    // No of Rows
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    // No of row Intersection
    
    
    
    // Cell for Row
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 1 {
            guard let cell  = tableView.dequeueReusableCell(withIdentifier: "customCell") as? CustomTableViewCell else {return CustomTableViewCell()}
            
            cell.lblText.text = names[indexPath.row]
            return cell
        }
        
        
    
        var cell  = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell != nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = names[indexPath.row]
        cell?.detailTextLabel?.text = "test"
        cell?.imageView?.image = UIImage(named: "image")
        
        
        return cell!
        
        
    }
    
    
}





