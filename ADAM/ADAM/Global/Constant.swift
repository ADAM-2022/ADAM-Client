//
//  Constant.swift
//  ADAM
//
//  Created by Noah Park on 2023/01/26.
//

import UIKit

struct Constant {
    static let someConstant: CGFloat = 0.0
}

struct App {
    struct Host {
        static let baseURL = "http://poding.site:8080"
    }
    
    struct ParameterKey {
        static let id = "id"
        static let email = "email"
        static let deviceToken = "deviceToken"
    }
}

enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

enum ContentType: String {
    case json = "application/json"
}
