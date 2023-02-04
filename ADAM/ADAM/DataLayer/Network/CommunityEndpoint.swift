//
//  APIRouter.swift
//  ADAM
//
//  Created by Noah Park on 2023/02/01.
//

import Alamofire
import Foundation

enum CommunityEndpoint: APIConfiguration {
    case signUp(id: Int, email: String, deviceToken: String)
    case posts
    case post(id: Int)
    
    var method: HTTPMethod {
        switch self {
        case .signUp:
            return .post
        case .posts:
            return .get
        case .post:
            return .get
        }
    }
    
    var path: String {
        switch self {
        case .signUp:
            return "/members/login"
        case .posts:
            return "/posts"
        case .post(let id):
            return "/posts/\(id)"
        }
    }
    
    var parameters: Parameters? {
        switch self {
        case .signUp(let id, let email, let deviceToken):
            return [App.ParameterKey.id: id,
                    App.ParameterKey.email: email,
                    App.ParameterKey.deviceToken: deviceToken]
        case .posts, .post:
            return nil
        }
    }
    
    // MARK: - URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        let baseUrl = try App.Host.baseURL.asURL()
        
        var urlRequest = URLRequest(url: baseUrl.appendingPathComponent(path))
        
        // Set HTTP Method
        urlRequest.httpMethod = method.rawValue
        
        // Set Common Headers
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.acceptType.rawValue)
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.contentType.rawValue)
 
        // Set Parameters
        if let parameters = parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }
        return urlRequest
    }
}
