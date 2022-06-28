//
//  GetStockByIdRequest.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 28.06.2022.
//

import Foundation

final class GetStockByIdRequest: PrivateURLRequest {
    init(by id: String) {
        super.init()
        self.path = "stock/\(id)"
    }
}
