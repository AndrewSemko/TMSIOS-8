//
//  ViewController.swift
//  DZ12
//
//  Created by Andrey  on 19.07.21.
//

import UIKit

class StartTheGameViewController: UIViewController {

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        
    }
    func getViewController(from id: String) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let currentViewController = storyboard.instantiateViewController(withIdentifier: id)
        currentViewController.modalPresentationStyle = .fullScreen
        currentViewController.modalTransitionStyle = .crossDissolve
        return currentViewController
    }

    @IBAction func startTheGameButtonAction(_ sender: UIButton) {
        self.navigationController?.pushViewController(getViewController(from: "CheckersViewController"), animated: true)
    }
    @IBAction func resultButtonAction(_ sender: UIButton) {
        self.navigationController?.pushViewController(getViewController(from: "ResultViewController"), animated: true)
    }
    @IBAction func customizationButtonAction(_ sender: UIButton) {
        self.navigationController?.pushViewController(getViewController(from: "CustomizationViewController"), animated: true)
    }
    
    
    

}

