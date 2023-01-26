//
//  ImageAsset.swift
//  ADAM
//
//  Created by Noah Park on 2023/01/26.
//

import UIKit

enum ImageAsset: String {
    case someImage
}

extension ImageAsset {
    var image: UIImage? {
        .init(named: self.rawValue)
    }
}
