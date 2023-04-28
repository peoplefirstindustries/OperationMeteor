//
//  FlyerViewModel.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import Foundation

class FlyerViewModel: ObservableObject {
    @Published var flyers: [Flyer] = [
        Flyer(id: UUID(), title: "50% off Fruits", description: "Get fresh fruits at half price this week."),
        Flyer(id: UUID(), title: "Buy 1 Get 1 Free", description: "Buy one item from our bakery and get another one free.")
    ]
    
    @Published var comics: [Comic] = [
        Comic(id: UUID(), title: "Comic 1", image: "comic1"),
        Comic(id: UUID(), title: "Comic 2", image: "comic2")
    ]
    
    // Add functions to fetch and display flyer and comic data from a server or local storage
}
