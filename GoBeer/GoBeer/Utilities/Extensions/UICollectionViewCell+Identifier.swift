//
//  UICollectionViewCell+Identifier.swift
//  GoBeer
//
//  Created by Himanshu Juneja on 30/08/22.
//

import Foundation
import UIKit

extension UICollectionViewCell {
    static var identifier: String {
        return String(describing: self)
    }
}

