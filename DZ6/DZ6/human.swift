//
//  human.swift
//  DZ6
//
//  Created by Andrey  on 28.06.21.
//

import Foundation

class Human {
    var firstname: String
    let lastage: String
    let surName:String?
    let age: Int
    let wieght: Float
    
    init(firstname: String, lastage: String, surName: String?, age: Int, wieght: Float) {
        self.firstname = firstname
        self.lastage = lastage
        self.surName = surName
        self.age = age
        self.wieght = wieght
    }
    func sayHello() {
        print("Hello! My name is \(self.firstname)")
    }
    
    
    
    
    
}






