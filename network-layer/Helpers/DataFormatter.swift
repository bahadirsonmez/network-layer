//
//  DataFormatter.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 28.06.2022.
//

import Foundation

class DataFormatter {
    
    class func format(_ recipeArray: [Recipe]) -> RecipesDictionary {
        var recipesDict: RecipesDictionary = [:]
        recipeArray.forEach {
            guard let id = $0.id, let name = $0.id, let price = $0.price, let ingredients = $0.ingredients else { return }
            let ingredientKeys = Array(ingredients.keys) as [String]
            let hasCheese = ingredientKeys.contains("cheese")
            let hasSalt = ingredientKeys.contains("salt")
            recipesDict[id] = RecipeById(name: name, price: price, ingredients: ingredientKeys, hasCheese: hasCheese, hasSalt: hasSalt)
        }
        return recipesDict
    }
    
}
