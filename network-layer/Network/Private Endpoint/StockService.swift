//
//  StockService.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 28.06.2022.
//

import Alamofire

class StockService: BaseService {
    
    func getAllStocks(request: GetAllStocksRequest, completion: @escaping (Result<[Ingredient], AFError>) -> Void) {
        self.performRequest(request: request, completion: completion)
    }
    
    func getStockById(request: GetStockByIdRequest, completion: @escaping (Result<Ingredient, AFError>) -> Void) {
        self.performRequest(request: request, completion: completion)
    }
    
    func createNewStock(request: CreateStockRequest, completion: @escaping (Result<Ingredient, AFError>) -> Void) {
        self.performRequest(request: request, completion: completion)
    }
    
    func updateStockById(request: UpdateStockByIdRequest, completion: @escaping (Result<Ingredient, AFError>) -> Void) {
        self.performRequest(request: request, completion: completion)
    }
    
    func deleteStockById(request: DeleteStockByIdRequest, completion: @escaping (Result<Ingredient, AFError>) -> Void) {
        self.performRequest(request: request, completion: completion)
    }
    
}
