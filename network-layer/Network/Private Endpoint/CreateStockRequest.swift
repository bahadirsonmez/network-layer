//
//  CreateStockRequest.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 28.06.2022.
//

import Foundation

// MARK: - Request

final class CreateStockRequest: PrivateURLRequest {
    init(with ingredient: Ingredient) {
        super.init()
        self.path = "stock/"
        self.method = .post
        self.parameters = ingredient
    }
}
