//
//  ViewController.swift
//  DZ12
//
//  Created by Andrey  on 19.07.21.
//

import UIKit

class StartTheGameViewController: UIViewController {
    
    @IBOutlet weak var resultOutlet: UIButton!
    @IBOutlet weak var customizationOutlet: UIButton!
    
    @IBOutlet weak var startGameStackView: UIStackView!
    @IBOutlet weak var startView: UIView!
    @IBOutlet weak var visualView: UIVisualEffectView!
    @IBOutlet weak var dotherView: UIView!
    @IBOutlet weak var borderView: UIView!
    
    @IBOutlet weak var startGameConstraints1: NSLayoutConstraint!
    
    var isAnimation: Bool = true
    
    let vcIds: [String] = ["CheckersViewController","ResultViewController","CustomizationViewController","HistoryViewController"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startView.layer.cornerRadius = 20
        startView.addShadow(with: .black, opacity: 0.8)
        visualView.layer.cornerRadius = 10
        visualView.contentView.layer.cornerRadius = 10
        visualView.clipsToBounds = true
        dotherView.layer.cornerRadius = 10
        borderView.layer.cornerRadius = 10

        resultOutlet.addShadow(with: .black, opacity: 0.8)
        customizationOutlet.addShadow(with: .black, opacity: 0.8)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        isAnimation = true
        creteAnimationView()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        startGameConstraints1.constant = 8
        isAnimation = false
    }
     
    func creteAnimationView () {
        guard self.isAnimation else { return }
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [.autoreverse]) {
            self.startGameConstraints1.constant = -8
            self.view.layoutIfNeeded()
        } completion: { _ in
            self.startGameConstraints1.constant = 8
            self.view.layoutIfNeeded()
            self.creteAnimationView()
        }
    }

    @IBAction func goToNewButtonAction(_ sender: UIButton) {
        guard let vc = getViewController (from: vcIds[sender.tag]) else { return }
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

