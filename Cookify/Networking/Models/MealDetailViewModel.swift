//
//  MealDetailViewModel.swift
//  Cookify
//
//  Created by Ayman Abdallah on 5/25/23.
//

import Foundation

class MealDetailViewModel: ObservableObject {
    @Published var mealDetail: MealDetail?

    func fetchMealDetail(id: String) {
        guard let url = API.getMealDetailURL(id: id) else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            let decoder = JSONDecoder()
            
            if let data = data {
                do {
                    let response = try decoder.decode(MealDetailResponse.self, from: data)
                    DispatchQueue.main.async {
                        self.mealDetail = response.meals.first
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
