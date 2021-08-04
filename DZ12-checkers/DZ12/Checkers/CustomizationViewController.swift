//
//  CustomizationViewController.swift
//  DZ12
//
//  Created by Andrey  on 21.07.21.
//

import UIKit

class CustomizationViewController: UIViewController {
    
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topConstraint.constant = -view.bounds.height
        view.layoutIfNeeded()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        startAnimation()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        topConstraint.constant = -view.bounds.height
        view.layoutIfNeeded()
    }
    
    func startAnimation() {
        UIView.animateKeyframes(withDuration: 0.5, delay: 1.0, options: []) {
            self.topConstraint.constant = 0
            self.view.layoutIfNeeded()
        } completion: { _ in
            
        }
    }
}

