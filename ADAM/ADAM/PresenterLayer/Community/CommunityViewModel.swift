//
//  CommunityViewModel.swift
//  ADAM
//
//  Created by Noah Park on 2023/01/26.
//

import Foundation

protocol CommunityViewModelInput {
    func someMethod()
}

protocol CommunityViewModelOutput {
    var briefPosts: Observable<[Int]> { get }
    var error: Observable<String> { get }
}

final class CommunityViewModel: BaseViewModel, CommunityViewModelInput, CommunityViewModelOutput {
    var briefPosts: Observable<[Int]> = Observable([])
    var error: Observable<String> = Observable("")
    
    override init() {
        
    }
    
    func someMethod() {
            
    }
    
   
    
    
}
