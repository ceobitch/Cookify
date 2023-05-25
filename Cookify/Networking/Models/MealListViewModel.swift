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
        guard let url = API.getMealListURL() else {
            print("Invalid URL")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            let decoder = JSONDecoder()

            if let data = data {
                do {
                    let response = try decoder.decode(MealsResponse.self, from: data)
                    DispatchQueue.main.async {
                        // 🔔 Here we are trying to filter the null vlaues
                        // 🔔 We also are going to sort them A-Z
                        self.meals = response.meals
                            .filter { $0.idMeal != nil && $0.strMeal != nil && $0.strMealThumb != nil }
                            .sorted { $0.strMeal! < $1.strMeal! }
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

