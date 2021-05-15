//
//  ViewController.swift
//  CoreDataApp
//
//  Created by Chetanjeev Singh Bains on 02/03/21.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet var table : UITableView!
    
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var items : [Person]?

    override func viewDidLoad() {
        super.viewDidLoad()
    
        fetchData()
        
    }
    
    // Fetch selected data
    
    func fetchData(){
        
//        let request = Person.fetchRequest() as NSFetchRequest<Person>
//
//        let pred = NSPredicate(format: "name CONTAINS 'Bains'")
//        let pred = NSPredicate(format: "name CONTAINS %@","Bains")
//        request.predicate = pred
//        do{
//            self.items = try context.fetch(request)
//            DispatchQueue.main.async {
//                self.table.reloadData()
//            }
//
//        }
//        catch{
//            print(error)
//        }
        
        // Fetch All data
        
        do{
            self.items = try context.fetch(Person.fetchRequest())
            DispatchQueue.main.async {
                self.table.reloadData()
            }

        }
        catch{
            print(error)
        }
        
        
        
    }
    
    @IBAction func didTap(){
        
        // Alert
        let alert = UIAlertController.init(title: "Add Person", message:"What's their Name?", preferredStyle: .alert)
        alert.addTextField()
        
        // Button Handler
        let submitButton = UIAlertAction(title: "Add", style: .default){ (action) in
            // Textfield for Alert
            let textfield = alert.textFields![0]
        
            // Person Object
            let newPerson = Person(context: self.context)
            newPerson.name = textfield.text
            newPerson.age = 20
            newPerson.gender = "Male"
            
            // Save Data
            do{
                try self.context.save()}
            catch{print(error)}
            
            // Refresh TableView
            self.fetchData()
        }
        
        alert.addAction(submitButton)
        self.present(alert, animated: true, completion: nil)
    }

}

extension ViewController : UITableViewDataSource , UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = self.items![indexPath.row]
        cell.textLabel?.text = person.name
        return cell
    }
    
    // Edit
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let person = self.items![indexPath.row]

        let alert = UIAlertController.init(title: "Edit Person", message: "Edit Name:", preferredStyle: .alert)
        alert.addTextField()

        let textfield = alert.textFields![0]
        textfield.text = person.name
        
        let saveButton = UIAlertAction(title: "Save", style: .default){(action) in
            let textfield = alert.textFields![0]
            
            // edit name property
            person.name = textfield.text
            
            // save
            do{
                try self.context.save()}
            catch{print(error)}
            
            // Refresh TableView
            self.fetchData()
        }
        
        alert.addAction(saveButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    // Delete Swipe Action
    
    func tableView(_ tableView: UITableView,trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let action = UIContextualAction(style: .destructive, title: "Delete"){ (action,view,completionHandler) in
            
            //person to remove
            let personToRemove = self.items![indexPath.row]
            
            // delete
            self.context.delete(personToRemove)
            
            // save
            do{
                try self.context.save()}
            catch{print(error)}
            
            // Refresh TableView
            self.fetchData()
        }
            
        return UISwipeActionsConfiguration(actions: [action])
            
    }
}
    

