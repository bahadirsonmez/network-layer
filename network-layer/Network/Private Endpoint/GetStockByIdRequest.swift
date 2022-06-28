//
//  GetStockByIdRequest.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 28.06.2022.
//

import Foundation

// MARK: - Request

final class GetStockByIdRequest: PrivateURLRequest {
    init(with id: String) {
        super.init()
        self.path = "stock/\(id)"
    }
}
