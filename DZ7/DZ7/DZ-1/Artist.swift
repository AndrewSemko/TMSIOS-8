//
//  Artist.swift
//  DZ7
//
//  Created by Andrey  on 4.07.21.
//

import Foundation
class Artist {
    
    var name: String
    let lastName: String
    
    init(name: String, lastName: String) {
        self.name = name
        self.lastName = lastName
    }
    func speech() {
         print("\(name) \(lastName) - Актёр театра и кино")
     }
}
