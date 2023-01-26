//
//  BriefPost.swift
//  ADAM
//
//  Created by Noah Park on 2023/01/26.
//

import UIKit

// "accessToken": "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxZTNjMTZlZiIsImF1dGgiOiJST0xFX1VTRVIifQ.RmpWjtmGIQ7md1WCvBFWEIzyiW7uxAAO2RpJ95wFKdrrOPSnzDK37_2pKzJRYlhqKpXd0oTecbiM63YEn6oOjw"

//"id": 19,
//"writerName": "new member",
//"board": "FREE",
//"createdDate": "2022-12-6 10:22:11",
//"modified": false,
//"title": "NewPost",
//"viewCount": 1,
//"commentCount": 0,
//"thumbnail": "4e023554-9e7e-4f02-9401-a560cf73948b.png"

enum Board: String {
    case free
    case none
    
    static func changeToEnum(_ string: String) -> Self {
        return .init(rawValue: string.lowercased())!
    }
}

struct BriefPost: Hashable {
    var id: Int
    var board: Board
    var title: String
    var createdDate: Date
    var modified: Bool
    var viewCount: Int
    var commentCount: Int
    var thumbnail: String?
}

extension BriefPost {
    #if DEBUG
    static let dummy: [BriefPost] = [
        BriefPost(id: 1, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3, thumbnail: "4e023554-9e7e-4f02-9401-a560cf73948b.png"),
        BriefPost(id: 2, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        BriefPost(id: 3, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        BriefPost(id: 4, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        BriefPost(id: 5, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3, thumbnail: "4e023554-9e7e-4f02-9401-a560cf73948b.png"),
        BriefPost(id: 6, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        BriefPost(id: 7, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        BriefPost(id: 8, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        BriefPost(id: 9, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3, thumbnail: "4e023554-9e7e-4f02-9401-a560cf73948b.png"),
        BriefPost(id: 10, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        BriefPost(id: 11, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        BriefPost(id: 12, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        BriefPost(id: 13, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        BriefPost(id: 14, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        BriefPost(id: 15, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        BriefPost(id: 16, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        BriefPost(id: 17, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        BriefPost(id: 18, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        BriefPost(id: 19, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        BriefPost(id: 20, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        BriefPost(id: 21, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3),
        BriefPost(id: 22, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3, thumbnail: "4e023554-9e7e-4f02-9401-a560cf73948b.png"),
        BriefPost(id: 23, board: .changeToEnum("FREE"), title: "오늘 날씨 실화냐?", createdDate: Date(), modified: false, viewCount: 7, commentCount: 3, thumbnail: "4e023554-9e7e-4f02-9401-a560cf73948b.png"),
        
    ]
    #endif
}
