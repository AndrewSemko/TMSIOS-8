//
//  UIFont+CoreKit.swift
//  DZ12
//
//  Created by Andrey  on 29.07.21.
//

import UIKit

extension UIFont {
    static func indieFlower(with size: CGFloat) -> UIFont {
        return UIFont(name: "IndieFlower-Regular", size: size) ?? UIFont.systemFont(ofSize: size)
    }
}
