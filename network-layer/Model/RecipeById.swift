//
//  RecipeById.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 28.06.2022.
//

import Foundation

typealias RecipesDictionary = [String: RecipeById]

struct RecipeById: Codable {
    let name: String
    let price: Int
    let ingredients: [String]
    let hasCheese, hasSalt: Bool
}
