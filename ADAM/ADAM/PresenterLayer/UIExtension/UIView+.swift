//
//  UIView+.swift
//  ADAM
//
//  Created by Noah Park on 2023/01/26.
//

import UIKit

/// UIExtension 디렉토리에는,
/// UI를 만들 떄 필요한 extension들(대부분 UI키워드가 붙습니다)을 생성해주시면 됩니다.
/// 
extension UIView {
    func makeCorenerRadius(_ radius: CGFloat) {
        self.layer.cornerRadius = radius
    }
}
