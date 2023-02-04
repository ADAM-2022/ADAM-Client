//
//  PreviewPostRepositoryProtocol.swift
//  ADAM
//
//  Created by Noah Park on 2023/01/28.
//

import Foundation

protocol PreviewPostRepositoryProtocol {
    typealias PostsList = [PreviewPost]
    
    func fetchPostsList() -> PostsList
}
