//
//  ViewController.swift
//  DZ8
//
//  Created by Andrey  on 7.07.21.
//

import UIKit

class ViewController: UIViewController {
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       chessBordDraw()
    }
    let rows = 8
    let colums = 8
    
    
    func chessBordDraw() {
        for row in 0..<rows {
            for colum in 0..<colums {
                let view = UIView(frame: CGRect(x: (row + 1) * 40, y: (colum + 2) * 40,
                                                width: 40, height: 40))
                self.view.addSubview(view)
                if (row + colum) % 2 == 0 {
                    view.backgroundColor = .black
                }
            }
        }
    }

}

