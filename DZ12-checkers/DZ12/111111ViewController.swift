//
//  111111ViewController.swift
//  DZ12
//
//  Created by Andrey  on 2.08.21.
//

import UIKit

class _11111ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }
    

}
