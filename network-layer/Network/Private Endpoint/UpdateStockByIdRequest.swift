//
//  UpdateStockByIdRequest.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 28.06.2022.
//

import Foundation

final class UpdateStockByIdRequest: PrivateURLRequest {
    init(by id: String, with ingredient: Ingredient) {
        super.init()
        self.path = "stock/\(id)"
        self.method = .put
        self.parameters = ingredient
    }
}
