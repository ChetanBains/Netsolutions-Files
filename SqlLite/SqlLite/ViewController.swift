//
//  ViewController.swift
//  SqlLite
//
//  Created by Chetanjeev Singh Bains on 03/03/21.
//

import UIKit
import SQLite3

class ViewController: UIViewController {
    
    var db : OpaquePointer?
    
    @IBOutlet var txtFieldName : UITextField!
    @IBOutlet var txtFieldAge : UITextField!
    
    // Insert Data to table with Button
    
    @IBAction func didSaveButton(){
        let name = txtFieldName.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let age = txtFieldAge.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if(name!.isEmpty){
            print("Name is Empty")
            return
        }
        
        if(age!.isEmpty){
            print("Age is Empty")
            return
        }
        
        var statement : OpaquePointer?
        
        let insertQuery = "INSERT INTO consumerT (name,age) VALUES (?,?)"
        
        if sqlite3_prepare(db, insertQuery, -1, &statement, nil) != SQLITE_OK {
            print("Error binding Query")
        }
        
        if sqlite3_bind_text(statement, 1,name, -1, nil) != SQLITE_OK {
            print("Error binding name")
            
        }
        print(sqlite3_bind_text)
        if sqlite3_bind_int(statement, 2, (age! as NSString).intValue) != SQLITE_OK {
            print("Error binding age")
        }
        if sqlite3_step(statement) == SQLITE_DONE {
            print("Entry saved successfully")
        }
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Connection Setup
        
        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("HeroDatabase.sqlite")
        
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK{
            print("Error opening Database")
            return
        }
        
        // Create Table
        
        let createTableQuery = "CREATE TABLE consumerT(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER)"
        
        if sqlite3_exec(db, createTableQuery, nil, nil, nil) != SQLITE_OK{
            print("Error creating Database")
            return
        }
        print("Everything is fine")
        
    }
}

