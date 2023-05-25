//
//  MealDetailView.swift
//  Cookify
//
//  Created by Ayman Abdallah on 5/25/23.
//

import SwiftUI
import URLImage

struct MealDetailView: View {
    @ObservedObject var viewModel = MealDetailViewModel()
    var mealId: String

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                if let meal = viewModel.mealDetail {
                    URLImage(URL(string: meal.strMealThumb)!) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 200)
                            .cornerRadius(50)
                            .clipped()
                    }
                    .padding(.bottom, 8)

                    Text(meal.strMeal)
                        .font(.largeTitle)
                    Text(meal.strInstructions)
                        .font(.body)
                    ForEach(meal.ingredients, id: \.ingredient) { ingredient, measure in
                        Text("\(ingredient): \(measure)")
                    }
                }
            }
            .padding()
        }
        .onAppear {
            self.viewModel.fetchMealDetail(id: mealId)
        }
    }
}



struct MealDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MealDetailView(mealId: "52772")
    }
}
