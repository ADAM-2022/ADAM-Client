//
//  PreviewPostRepository.swift
//  ADAM
//
//  Created by Noah Park on 2023/01/28.
//

import Foundation

final class PreviewPostRepository: PreviewPostRepositoryProtocol {
    typealias PostsList = [PreviewPost]
    
    func fetchPostsList() -> PostsList {
        return PreviewPost.dummy
    }
}
