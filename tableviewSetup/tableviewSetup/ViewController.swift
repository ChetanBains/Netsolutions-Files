//
//  ViewController.swift
//  tableviewSetup
//
//  Created by Chetanjeev Singh Bains on 02/03/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
    }

    let tableview: UITableView = {
            let tv = UITableView()
            tv.backgroundColor = UIColor.white
            tv.translatesAutoresizingMaskIntoConstraints = false
            return tv
        }()
}

func setupTableView() {
    tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
    
    view.addSubview(tableview)
    
    NSLayoutConstraint.activate([
        tableview.topAnchor.constraint(equalTo: self.view.topAnchor),
        tableview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        tableview.rightAnchor.constraint(equalTo: self.view.rightAnchor),
        tableview.leftAnchor.constraint(equalTo: self.view.leftAnchor)
    ])
}
view rawTableView_Med
