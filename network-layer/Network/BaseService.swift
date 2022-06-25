//
//  BaseService.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 25.06.2022.
//

import Alamofire
import Foundation

class BaseService {
    func performRequest<T:Decodable>(request: BaseURLRequest, completion:@escaping (Result<T, AFError>)->Void) {
        AF.request(request)
            .responseDecodable (decoder: JSONDecoder()){ (response: DataResponse<T, AFError>) in
                completion(response.result)
            }
    }
}
