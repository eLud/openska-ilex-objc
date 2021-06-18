//
//  ContentView.swift
//  Shared
//
//  Created by Ludovic Ollagnier on 18/06/2021.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var resto = Restaurant(meals: [Meal(name: "Pizza", isVeggie: true), Meal(name: "Steak frites", isVeggie: false)])
    
    var body: some View {
        NavigationView {
            List(resto.meals) { meal in
                NavigationLink(
                    destination: MealDetailsView(meal: meal),
                    label: {
                        MealCell(meal: meal)
                    })
            }
            .animation(.easeIn)
            .toolbar {
                Button("Add") {
                    let meal = Meal(name: "NewMeal", isVeggie: Bool.random())
                    resto.add(meal: meal)
                }
            }
        }
    }
}

struct MealCell: View {

    let meal: Meal

    var body: some View {
        HStack {
            Text(meal.name)
            Spacer()
            if meal.isVeggie {
                Image(systemName: "leaf")
                    .foregroundColor(Color.green)
            }
            Text("Prix")
                .font(.footnote)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
