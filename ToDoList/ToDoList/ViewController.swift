//
//  ViewController.swift
//  ToDoList
//
//  Created by Chetanjeev Singh Bains on 15/03/21.
//

//

import UIKit
import RealmSwift

class ToDoListItems : Object{
    @objc dynamic var item : String = ""
    @objc dynamic var date : Date = Date()
    
}

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet var table : UITableView!
    private var realm = try! Realm()
    private var data = [ToDoListItems]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        data.realm
        table.register(UITableViewCell.self,forCellResuseIdentifier: "cell")
        table.delegate = self
        table.dataSource = self
    }
    
    @IBAction func didTapAddButton(){
        guard let vc = storyboard?.instantiateViewController(identifier: "enter") as? EntryViewController
        else{return}
        vc.completionHanler = {[weak self] in
            self?.refresh()
        }
        vc.title = "New Item"
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated : true)
    }
    
    func refresh(){
        let items = realm()
    }

}

// MARK :- Table

extension UITableViewDelegate{
//    func tableView(_ <#T##tableView: UITableView##UITableView#>, didSelectRowAt indexPath:IndexPath){
//        tableView.deselectRow(at: indexPath,animated: true)
//
//    }
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = data[indexPath.row].item
        return cell!
    }
  


}

