//
//  MealListViewModel.swift
//  Cookify
//
//  Created by Ayman Abdallah on 5/25/23.
//

import Foundation

class MealListViewModel: ObservableObject {
    @Published var meals = [Meal]()
    
    func fetchMeals() {
        guard let url = URL(string: "\(API.base)filter.php?c=Dessert") else {
            print("Invalid URL")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            let decoder = JSONDecoder()
            
            if let data = data {
                do {
                    let response = try decoder.decode(MealsResponse.self, from: data)
                    DispatchQueue.main.async {
                       
                    }
                } catch {
                    print("Failed to decode JSON")
                }
            } else if let error = error {
                print("HTTP Request failed: \(error)")
            }
        }.resume()
    }
}

