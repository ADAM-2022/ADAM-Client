//
//  Date+.swift
//  ADAM
//
//  Created by Noah Park on 2023/01/26.
//

/// GlobalExtension 디렉토리에는,
/// 앱 전체에서 로직에서 사용하게 될 (UI를 제외한, 즉 Foundation만 import하는) Extension을 작성해주시면 됩니다.

import Foundation

extension Date {
    static func - (lhs: Date, rhs: Date) -> TimeInterval {
        return lhs.timeIntervalSinceReferenceDate - rhs.timeIntervalSinceReferenceDate
    }
}
