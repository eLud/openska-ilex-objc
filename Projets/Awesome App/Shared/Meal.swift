//
//  Meal.swift
//  Awesome App
//
//  Created by Ludovic Ollagnier on 18/06/2021.
//

import Foundation

struct Meal: Identifiable {
    let name: String
    let isVeggie: Bool
    let id = UUID()
}

class Restaurant: ObservableObject {

    @Published var meals: [Meal]

    init(meals: [Meal]) {
        self.meals = meals
    }

    func add(meal: Meal) {
        meals.append(meal)
        objectWillChange.send()
    }
}
