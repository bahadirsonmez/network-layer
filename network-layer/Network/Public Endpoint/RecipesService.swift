//
//  RecipesService.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 27.06.2022.
//

import Alamofire

class RecipesService: BaseService {
    
    func getAllRecipes(request: GetAllRecipesRequest, completion: @escaping (Result<[Recipe], AFError>) -> Void) {
        self.performRequest(request: request, completion: completion)
    }
    
}
