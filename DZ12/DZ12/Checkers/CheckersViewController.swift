//
//  CheckersViewController.swift
//  DZ12
//
//  Created by Andrey  on 21.07.21.
//

import UIKit

class CheckersViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var chessBoard: UIView!
    
    var count: Int = 0
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
        timeLabel.text = "\(count)"
        
        RunLoop.main.add(timer!, forMode: .common)
        
        view.backgroundColor = .cyan
//        chessBordDraw()
        createChessBoard()
//        checkersImage()
    }
    
    @objc func timerFunc() {
        count += 1
        timeLabel.text = "\(count)"
    }
    
//    func checkersImage() {
//        let checker1 = UIImageView(image: UIImage(named: "1"))
//        checker1.frame = CGRect(x: 5, y: 5, width: 30, height: 30)
//   }
    func createChessBoard() {
        let size = view.bounds.size.width - 32
   
        chessBoard = UIView (frame: CGRect(origin: .zero, size: CGSize(width: size, height: size)))
        chessBoard.backgroundColor = .white
        
        let sizeColum = size / 8
        for row in 0..<8 {
            for colum in 0..<8 {
                let view1 = UIView(frame: CGRect(x: sizeColum * CGFloat(row), y: sizeColum * CGFloat(colum) , width: sizeColum, height: sizeColum))
                view1.backgroundColor = ((row + colum) % 2) == 0 ? .white : .black
                chessBoard.addSubview(view1)
                
                guard colum < 3 || colum > 4, view1.backgroundColor == .black else {continue}
                
                let checker1 = UIImageView(frame: CGRect(x: 5, y: 5, width: sizeColum - 10, height: sizeColum - 10))
                checker1.image = UIImage(named: "1")
                let checker2 = UIImageView(frame: CGRect(x: 5, y: 5, width: sizeColum - 10, height: sizeColum - 10))
                checker2.image = UIImage(named: "2")
                checker1.isUserInteractionEnabled = true
                checker2.isUserInteractionEnabled = true
                
//                checker.backgroundColor = colum < 3 ? .white : .lightGray
                checker1.layer.cornerRadius = checker1.bounds.size.width / 2.0
                checker2.layer.cornerRadius = checker2.bounds.size.width / 2.0
                view1.addSubview(colum < 3 ? checker1 : checker2)
                
                let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panGesture(_:)))
                checker1.addGestureRecognizer(panGesture)
                checker2.addGestureRecognizer(panGesture)
         }
        }
        view.addSubview(chessBoard)
        chessBoard.center = view.center
      }
// надо изучить ещё раз эту функцию
    
    @objc
   func panGesture(_ sender: UIPanGestureRecognizer) {
    let location = sender.location(in: chessBoard)
    let translation = sender.translation(in: chessBoard)
    
    switch sender.state {
    case .changed:
        guard let colum = sender.view?.superview, let cellOrigin = sender.view?.frame.origin else { return }
        chessBoard.bringSubviewToFront(colum)
        sender.view?.frame.origin = CGPoint(x: cellOrigin.x + translation.x,
                                            y: cellOrigin.y + translation.y)
        sender.setTranslation(.zero, in: chessBoard)
    case .ended:
        let currentCell = chessBoard.subviews.first(where: {$0.frame.contains(location) && $0.backgroundColor == .black})
        sender.view?.frame.origin = CGPoint(x: 5, y: 5)
        guard let newCell = currentCell, newCell.subviews.isEmpty, let cell = sender.view else { return }
        currentCell?.addSubview(cell)
    default: break
       }
    }
    
    @IBAction func backCherckersButtonActon(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
