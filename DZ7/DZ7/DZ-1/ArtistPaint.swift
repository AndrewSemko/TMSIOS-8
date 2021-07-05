//
//  ArtistPaint.swift
//  DZ7
//
//  Created by Andrey  on 5.07.21.
//

import Foundation

class ArtistPaint: Artist {
    
    override var name: String {
        didSet {
            super.name = "Picasso"
        }
    }
    override func speech() {
        print("\(name) \(lastName) - Пишет картины")
     }
}
