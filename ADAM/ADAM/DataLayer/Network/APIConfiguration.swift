//
//  APIConfiguration.swift
//  ADAM
//
//  Created by Noah Park on 2023/02/01.
//

import Foundation
import Alamofire

protocol APIConfiguration: URLRequestConvertible {
    var method: HTTPMethod { get }
    var path: String { get }
    var parameters: Parameters? { get }
}
