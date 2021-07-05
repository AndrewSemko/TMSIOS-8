//
//  Vehicle.swift
//  DZ7
//
//  Created by Andrey  on 5.07.21.
//

import Foundation

class Vehicle {
    
    let speed: Int
    let capacity: Int
    let cost: Int
    
    init(speed: Int, capacity: Int, cost: Int) {
        self.speed = speed
        self.capacity = capacity
        self.cost = cost
    }
    
    func shipping(numberOfPassengers: Int, distance: Int) -> String {
        
        var time = 0
        var number = 0
        var price = 0
        
        if numberOfPassengers > capacity {
            number = numberOfPassengers / capacity + 1
            price = number * cost
        }
        if numberOfPassengers <= capacity {
            number = 1
            price = cost
        }
        time = distance / speed
        
        return "price:  \(price), number: \(number), time: \(time)"
        
    }
}
