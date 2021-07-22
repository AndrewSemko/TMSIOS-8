//
//  CustomizationViewController.swift
//  DZ12
//
//  Created by Andrey  on 21.07.21.
//

import UIKit

class CustomizationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func backcustomizationButtonActon(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
