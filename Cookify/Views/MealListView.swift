//
//  MealListView.swift
//  Cookify
//
//  Created by Ayman Abdallah on 5/25/23.
//


import SwiftUI

struct MealListView: View {
    @ObservedObject var viewModel = MealListViewModel()
    
    var body: some View {
        NavigationView {
            Group {
                if viewModel.isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .scaleEffect(2)
                } else {
                    List(viewModel.meals) { meal in
                        NavigationLink(destination: MealDetailView(mealId: meal.idMeal ?? "")) {
                            MealRowView(meal: meal)
                        }
                    }
                }
            }
            .navigationTitle("Dessert Recipes")
            .navigationBarItems(trailing: Button(action: {
                // handle settings button tap here
            }) {
                Image(systemName: "gear") // SF Symbol for settings
            })
            .onAppear {
                self.viewModel.fetchMeals()
            }
        }
    }
}



struct MealListView_Previews: PreviewProvider {
    static var previews: some View {
        MealListView()
    }
}
