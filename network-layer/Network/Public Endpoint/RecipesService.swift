//
//  RecipesService.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 27.06.2022.
//

import Alamofire

class RecipesService: BaseService {
    
    func getRecipes(request: RecipesRequest, completion: @escaping (Result<RecipesResponse, AFError>) -> Void) {
        self.performRequest(request: request, completion: completion)
    }
    
}