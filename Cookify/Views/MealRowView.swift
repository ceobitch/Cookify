//
//  MealRowView.swift
//  Cookify
//
//  Created by Ayman Abdallah on 5/25/23.
//

import SwiftUI

struct MealRowView: View {
    var meal: Meal
    @State private var image: UIImage? = nil
    
    var body: some View {
        HStack {
            if let imageUrl = meal.strMealThumb, let url = URL(string: imageUrl) {
                Image(uiImage: image ?? UIImage(systemName: "photo")!)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .cornerRadius(15)
                    .clipped()
                    .onAppear {
                        loadImage(from: url)
                    }
            }

            Text(meal.strMeal ?? "")
        }
    }
    
    private func loadImage(from url: URL) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data, let loadedImage = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.image = loadedImage
                }
            }
        }.resume()
    }
}


struct MealRowView_Previews: PreviewProvider {
    static var previews: some View {
        MealRowView(meal: Meal(idMeal: "52772", strMeal: "Test Meal", strMealThumb: "https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg"))
    }
}
