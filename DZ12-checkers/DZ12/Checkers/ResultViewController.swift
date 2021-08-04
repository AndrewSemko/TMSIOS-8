//
//  ResultViewController.swift
//  DZ12
//
//  Created by Andrey  on 21.07.21.
//

import UIKit

class ResultViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func aboutButtonAction(_ sender: UIButton) {
        self.navigationController?.pushViewController(getViewController(from: "HistoryViewController")!, animated: true)
    }
}
