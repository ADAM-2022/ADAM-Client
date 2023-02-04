//
//  CommunityViewModel.swift
//  ADAM
//
//  Created by Noah Park on 2023/01/26.
//

import Foundation

protocol CommunityViewModelInput {
    func loadPreviewPosts()
}

protocol CommunityViewModelOutput {
    var previewPosts: Observable<[PreviewPost]> { get }
    var error: Observable<String> { get }
}

final class CommunityViewModel: BaseViewModel, CommunityViewModelInput, CommunityViewModelOutput {
    private let previewPostsListUseCase: PreviewPostsListUseCase
    var previewPosts: Observable<[PreviewPost]> = Observable([])
    var error: Observable<String> = Observable("")
    
    init(_ previewPostsListUseCase: PreviewPostsListUseCase) {
        self.previewPostsListUseCase = previewPostsListUseCase
        super.init()
    }
    
    func loadPreviewPosts() {
        self.previewPosts.value = previewPostsListUseCase.fetchPreviewPosts()
    }
}
