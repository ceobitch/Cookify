//
//  APIService.swift
//  Cookify
//
//  Created by Ayman Abdallah on 5/25/23.
//

import Foundation

enum API {
    static let base = "https://themealdb.com/api/json/v1/1/"
    
    static func getMealListURL() -> URL? {
        return URL(string: "\(base)filter.php?c=Dessert")
    }

    static func getMealDetailURL(id: String) -> URL? {
        return URL(string: "\(base)lookup.php?i=\(id)")
    }
}
