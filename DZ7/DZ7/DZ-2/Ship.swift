//
//  Ship.swift
//  DZ7
//
//  Created by Andrey  on 5.07.21.
//

import Foundation

class Ship: Vehicle {
    
    override init(speed: Int, capacity: Int, cost: Int){
        super.init(speed: speed, capacity: capacity, cost: cost)
    }
    override func shipping(numberOfPassengers: Int, distance: Int) -> String {
     return "Ship " + super.shipping(numberOfPassengers: numberOfPassengers, distance: distance)
     }

}
