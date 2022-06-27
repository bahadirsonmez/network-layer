//
//  Recipe.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 27.06.2022.
//

import Foundation

struct Recipe: Codable {
    let id, name: String?
    let price: Int?
    let ingredients: [[String:Int]]?
}
