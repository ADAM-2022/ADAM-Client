//
//  LoadPreviewPostsUseCase.swift
//  ADAM
//
//  Created by Noah Park on 2023/01/28.
//

import Foundation

final class PreviewPostsListUseCase {
    private let previewPostRepository: PreviewPostRepositoryProtocol
    
    init(_ previewPostRepository: PreviewPostRepositoryProtocol) {
        self.previewPostRepository = previewPostRepository
    }
    
    func fetchPreviewPosts() -> [PreviewPost] {
        return previewPostRepository.fetchPostsList()
    }
    
    func fetchPreviewPostsByNewest() -> [PreviewPost] {
        return previewPostRepository.fetchPostsList().sorted { $0.id > $1.id }
    }
}
