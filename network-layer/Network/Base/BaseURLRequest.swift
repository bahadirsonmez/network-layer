//
//  BaseURLRequest.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 25.06.2022.
//

import Alamofire
import Foundation

class BaseURLRequest: URLRequestConvertible {
    
    private let baseURL: String = ""
    var path: String = ""
    var method: HTTPMethod = .get
    var parameters: Codable?
        
    func asURLRequest() throws -> URLRequest {
        let endpoint = baseURL + path
        guard let url = URL(string: endpoint)
        else {
            throw AFError.invalidURL(url: endpoint)
        }
                
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")

        if let parameters = parameters {
            do {
                urlRequest.httpBody = try parameters.jsonData()
            } catch {
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }

        return urlRequest
    }
}
