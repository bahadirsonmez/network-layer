//
//  StockResponse.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 28.06.2022.
//

import Foundation

struct StockResponse: Codable {
    var data: [Ingredient]?
}
