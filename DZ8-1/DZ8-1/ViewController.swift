//
//  ViewController.swift
//  DZ8-1
//
//  Created by Andrey  on 8.07.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var plucLabel: UILabel!
    
    @IBOutlet weak var equilButton: UIButton!
    
    
    @IBOutlet weak var qualyLabel: UILabel!
    
      
    
    @IBAction func equilsButton(_ sender: UIButton) {
    

        let item: Double = Double(textField2.text!)!

        let item1: Double = Double(textField.text!)! + item

        qualyLabel.text = "\(item + item)"
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.placeholder = "Введите значение №1"
        textField2.placeholder = "Введите значение №2"
        
        
    }
    
    
    
    
    
    
    
}
