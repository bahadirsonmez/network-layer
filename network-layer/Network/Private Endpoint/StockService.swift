//
//  StockService.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 28.06.2022.
//

import Alamofire

class StockService: BaseService {
    
    func getAllStocks(request: GetAllStocksRequest, completion: @escaping (Result<StockResponse, AFError>) -> Void) {
        self.performRequest(request: request, completion: completion)
    }
    
}
