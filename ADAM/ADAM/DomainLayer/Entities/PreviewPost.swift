//
//  PreviewPost.swift
//  ADAM
//
//  Created by Noah Park on 2023/01/26.
//

import UIKit

enum Board: String {
    case free
    case none
    
    static func changeToEnum(_ string: String) -> Self {
        return .init(rawValue: string.lowercased())!
    }
}

struct PreviewPost: Hashable {
    var id: Int
    var board: Board
    var title: String
    var createdDate: Date
    var modified: Bool
    var viewCount: Int
    var commentCount: Int
    var thumbnail: String?
}

extension PreviewPost {
    #if DEBUG
    static let dummy: [PreviewPost] = [
        PreviewPost(id: 1, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3, thumbnail: "4e023554-9e7e-4f02-9401-a560cf73948b.png"),
        PreviewPost(id: 2, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        PreviewPost(id: 3, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        PreviewPost(id: 4, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        PreviewPost(id: 5, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3, thumbnail: "4e023554-9e7e-4f02-9401-a560cf73948b.png"),
        PreviewPost(id: 6, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        PreviewPost(id: 7, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        PreviewPost(id: 8, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        PreviewPost(id: 9, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3, thumbnail: "4e023554-9e7e-4f02-9401-a560cf73948b.png"),
        PreviewPost(id: 10, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        PreviewPost(id: 11, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        PreviewPost(id: 12, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        PreviewPost(id: 13, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        PreviewPost(id: 14, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        PreviewPost(id: 15, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        PreviewPost(id: 16, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        PreviewPost(id: 17, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        PreviewPost(id: 18, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        PreviewPost(id: 19, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        PreviewPost(id: 20, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        PreviewPost(id: 21, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        PreviewPost(id: 22, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3, thumbnail: "4e023554-9e7e-4f02-9401-a560cf73948b.png"),
        PreviewPost(id: 23, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3, thumbnail: "4e023554-9e7e-4f02-9401-a560cf73948b.png"),
        
    ]
    #endif
}
