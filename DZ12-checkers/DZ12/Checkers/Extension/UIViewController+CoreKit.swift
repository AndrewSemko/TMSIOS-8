//
//  extension.swift
//  DZ12
//
//  Created by Andrey  on 22.07.21.
//

import UIKit

extension UIViewController {
    func getViewController(from id: String) -> UIViewController? {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let currentViewController = storyboard.instantiateViewController(withIdentifier: id)
        return currentViewController
    }
    @IBAction func backButtonActon(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    @discardableResult
    func presentAlertController(with title: String?, message: String?, useTextField: Bool = false, preferredStyle: UIAlertController.Style = .alert, actions: UIAlertAction...) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        if useTextField, preferredStyle == .alert { alert.addTextField { _ in } }
        
        actions.forEach { alert.addAction($0) }
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
        
        return alert
    }
}
