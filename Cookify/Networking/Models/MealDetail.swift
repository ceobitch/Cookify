//
//  MealDetail.swift
//  Cookify
//
//  Created by Ayman Abdallah on 5/25/23.
//

import Foundation

struct MealDetail: Decodable {
    let idMeal: String
    let strMeal: String
    let strInstructions: String
    let strMealThumb: String
    let strIngredient1, strIngredient2, strIngredient3, strIngredient4, strIngredient5: String?
    let strIngredient6, strIngredient7, strIngredient8, strIngredient9, strIngredient10: String?
    let strIngredient11, strIngredient12, strIngredient13, strIngredient14, strIngredient15: String?
    let strIngredient16, strIngredient17, strIngredient18, strIngredient19, strIngredient20: String?
    let strMeasure1, strMeasure2, strMeasure3, strMeasure4, strMeasure5: String?
    let strMeasure6, strMeasure7, strMeasure8, strMeasure9, strMeasure10: String?
    let strMeasure11, strMeasure12, strMeasure13, strMeasure14, strMeasure15: String?
    let strMeasure16, strMeasure17, strMeasure18, strMeasure19, strMeasure20: String?
    var ingredients: [(ingredient: String, measure: String)] = []
    
    enum CodingKeys: String, CodingKey {
        case idMeal, strMeal, strInstructions, strMealThumb
        case strIngredient1, strIngredient2, strIngredient3, strIngredient4, strIngredient5
        case strIngredient6, strIngredient7, strIngredient8, strIngredient9, strIngredient10
        case strIngredient11, strIngredient12, strIngredient13, strIngredient14, strIngredient15
        case strIngredient16, strIngredient17, strIngredient18, strIngredient19, strIngredient20
        case strMeasure1, strMeasure2, strMeasure3, strMeasure4, strMeasure5
        case strMeasure6, strMeasure7, strMeasure8, strMeasure9, strMeasure10
        case strMeasure11, strMeasure12, strMeasure13, strMeasure14, strMeasure15
        case strMeasure16, strMeasure17, strMeasure18, strMeasure19, strMeasure20
    }
}

