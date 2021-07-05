//
//  Car.swift
//  DZ7
//
//  Created by Andrey  on 4.07.21.
//

import Foundation

class Car {
    var engine: Engine
    let trans: Trans
    let weight: Double
    let color: String
    let type: String
    
    init(engine: Engine,trans: Trans, weight: Double, color: String, type: String) {
        self.engine = engine
        self.trans = trans
        self.weight = weight
        self.color = color
        self.type = type
    }
    func go() {
        print("Class Car - method Go")
    }
    func clakson()  {
        
    }
    
}

