//
//  CheckersViewController.swift
//  DZ12
//
//  Created by Andrey  on 21.07.21.
//

import UIKit

enum CheckersMove: Int {
    case red = 1
    case black = 0
}

class CheckersViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    
    var chessBoard: UIView!
    
    var count: Int = 0
    var timer: Timer?
    
    var isLong = false
    var isStop = false
    
    var checkers: CheckersMove = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer(timeInterval: 0.1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
        RunLoop.main.add(timer!, forMode: .common)
   
        view.backgroundColor = .white
        
        createChessBoard()
    }
    
    @objc func timerFunc() {
        count += 1
        let time = secondsToHorsMinutesSeconds(seconds: count)
        let timeString = makeTimeString(hours: time.0, min: time.1, sec: time.2)
        timeLabel.text = timeString
        timeLabel.attributedText = NSAttributedString(string: timeString, attributes:
                                                    [.foregroundColor : UIColor.red,
                                                     .strokeColor : UIColor.black,
                                                     .strokeWidth : -4,
                                                     .font : UIFont.indieFlower(with: 30)])
    }
    
    func secondsToHorsMinutesSeconds(seconds: Int) -> (Int,Int,Int) {
        return ((seconds / 3600), ((seconds % 3600) / 60), ((seconds % 3600) % 60))
    }
    
    func makeTimeString(hours: Int, min: Int, sec: Int) -> String {
        var timeString = ""
        timeString += String(format: "%02d", hours)
        timeString += " : "
        timeString += String(format: "%02d", min)
        timeString += " : "
        timeString += String(format: "%02d", sec)
        return timeString
    }
    
    func createChessBoard() {
        let size = view.bounds.size.width - 32
   
        chessBoard = UIView (frame: CGRect(origin: .zero, size: CGSize(width: size, height: size)))
        chessBoard.backgroundColor = .gray
        
        let sizeColum = size / 8
        for row in 0..<8 {
            for colum in 0..<8 {
                let view1 = UIView(frame: CGRect(x: sizeColum * CGFloat(row),
                                                 y: sizeColum * CGFloat(colum),
                                                 width: sizeColum, height: sizeColum))
                view1.backgroundColor = ((row + colum) % 2) == 0 ? .lightGray : .black
                chessBoard.addSubview(view1)
                
                guard colum < 3 || colum > 4, view1.backgroundColor == .black else { continue }
                
                let checker = UIImageView(frame: CGRect(x: 5, y: 5,
                                                        width: sizeColum - 10,
                                                        height: sizeColum - 10))
                checker.image = UIImage(named: colum < 3 ? "1" : "2")
                checker.isUserInteractionEnabled = true
                checker.layer.cornerRadius = checker.bounds.size.width / 2.0
                checker.clipsToBounds = true
                checker.tag = colum < 3 ? 0 : 1
                
                chessBoard.layer.borderColor = UIColor.orange.cgColor
                chessBoard.layer.borderWidth = 6.0
                
                chessBoard.addShadow(with: .black, opacity: 1, shadowOffset: CGSize(width: 10,
                                                                                      height: 10))
                
                let longRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(longRecognizer(_:)))
                longRecognizer.minimumPressDuration = 0.1
                longRecognizer.delegate = self
                checker.addGestureRecognizer(longRecognizer)
                
                let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panGesture(_:)))
                panGesture.delegate = self
                view1.addSubview(checker)
                checker.addGestureRecognizer(panGesture)
         }
        }
        view.addSubview(chessBoard)
        chessBoard.center = view.center
      }
    
    @objc func longRecognizer(_ sender: UILongPressGestureRecognizer) {
        guard !isLong else { return }
        isLong = true
        UIView.animate(withDuration: 0.3) {
            sender.view?.transform = self.chessBoard.transform.scaledBy(x: 1.5, y: 1.5)
        }
        print("longRecognizer")
    }
    
    @objc func panGesture(_ sender: UIPanGestureRecognizer) {
        guard isLong else { return }
        print("panGesture")
        
        guard let checkers1 = sender.view, checkers1.tag == checkers.rawValue else { return }
        
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
        UIView.animate(withDuration: 0.3) {
            sender.view?.transform = .identity
        }
        let currentCell = chessBoard.subviews.first(where: {$0.frame.contains(location) && $0.backgroundColor == .black})
        sender.view?.frame.origin = CGPoint(x: 5, y: 5)
        guard let newCell = currentCell, newCell.subviews.isEmpty, let cell = sender.view else { return }
        currentCell?.addSubview(cell)
        
        isLong = false
        checkers = checkers == .red ? .black : .red
        
    default: break
       }
    }
    
    @IBAction func stopButtonAction(_ sender: UIButton) {
        presentAlertController(with: "STOP", message: nil, useTextField: true, actions: UIAlertAction(title: "Ok", style: .default, handler: nil))
     
        timer?.invalidate()
        timer = nil
        
        isStop = false
    }
}

extension CheckersViewController: UIGestureRecognizerDelegate {
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}

