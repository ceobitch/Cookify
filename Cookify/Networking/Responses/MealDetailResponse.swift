//
//  MealDetailResponse.swift
//  Cookify
//
//  Created by Ayman Abdallah on 5/25/23.
//

import Foundation

struct MealDetailResponse: Decodable {
    let meals: [MealDetail]
}
