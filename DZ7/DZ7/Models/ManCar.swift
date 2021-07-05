//
//  ManCar.swift
//  DZ7
//
//  Created by Andrey  on 4.07.21.
//

import Foundation


class ManCar: Car {
    var pricep: Pricep
    
    init(pricep: Pricep, engine: Engine,trans: Trans, weight: Double, color: String, type: String) {
        self.pricep = pricep
        super.init(engine: engine,trans: trans, weight: weight, color: color, type: type)
    }
    
    
    func setEmptyPricep() {
        
    }
    override func go() {
        print("Class manCar - method Go")
    }
    
    
    
}
