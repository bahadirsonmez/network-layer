//
//  GetAllRecipesRequest.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 27.06.2022.
//

import Foundation

final class GetAllRecipesRequest: PublicURLRequest {
    override init() {
        super.init()
        self.path = "recipe/"
    }
}
