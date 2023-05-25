//
//  MealRowView.swift
//  Cookify
//
//  Created by Ayman Abdallah on 5/25/23.
//

import SwiftUI

struct MealRowView: View {
    var meal: Meal

    var body: some View {
        HStack {
            if let imageUrl = meal.strMealThumb,
               let url = URL(string: imageUrl),
               let imageData = try? Data(contentsOf: url),
               let uiImage = UIImage(data: imageData) {
                Image(uiImage: uiImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .cornerRadius(10)
                    .clipped()
            }

            Text(meal.strMeal ?? "")
            
        }
    }
}

struct MealRowView_Previews: PreviewProvider {
    static var previews: some View {
        MealRowView(meal: Meal(idMeal: "52772", strMeal: "Test Meal", strMealThumb: "https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg"))
    }
}
