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
            List(viewModel.meals) { meal in
                MealRowView(meal: meal)
            }
            .navigationTitle("Dessert Recipes")
            .navigationBarItems(leading:
                                    Button(action: {
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
