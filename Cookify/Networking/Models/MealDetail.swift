//
//  MealDetail.swift
//  Cookify
//
//  Created by Ayman Abdallah on 5/25/23.
//

import Foundation

struct MealDetail: Codable, Identifiable {
    let idMeal: String
    let strMeal: String
    let strInstructions: String
    let strMealThumb: String

    var id: String {
        return idMeal
    }
}
