//
//  RecipesRequest.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 27.06.2022.
//

import Foundation

// MARK: - Request
final class RecipesRequest: BaseURLRequest {
    override init() {
        super.init()
        self.path = "public/recipe"
    }
}
