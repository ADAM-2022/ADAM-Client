//
//  Pallete.swift
//  ADAM
//
//  Created by Noah Park on 2023/01/26.
//

import UIKit

enum Pallete: String {
    case someColor
}

extension Pallete {
    var color: UIColor? {
        return .init(named: self.rawValue)
    }
}
