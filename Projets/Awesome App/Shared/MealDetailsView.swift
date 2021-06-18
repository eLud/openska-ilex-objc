//
//  MealDetailsView.swift
//  Awesome App
//
//  Created by Ludovic Ollagnier on 18/06/2021.
//

import SwiftUI

struct MealDetailsView: View {

    let meal: Meal

    var body: some View {
        VStack {
            Text(meal.name)
            if meal.isVeggie {
                Image(systemName: "leaf")
            }
        }
        .navigationTitle(meal.name)

    }
}

struct MealDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MealDetailsView(meal: Meal(name: "Pizza", isVeggie: true))
    }
}
