//
//  DeleteStockByIdRequest.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 28.06.2022.
//

import Foundation

final class DeleteStockByIdRequest: PrivateURLRequest {
    init(by id: String) {
        super.init()
        self.path = "stock/\(id)"
        self.method = .delete
    }
}
