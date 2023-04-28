//
//  BoardViewModel.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import Foundation

class BoardViewModel: ObservableObject {
    @Published var boards: [Board] = [
        Board(id: UUID(), title: "DIY Projects", description: "Do it yourself ideas and projects", image: "diy"),
        Board(id: UUID(), title: "Fitness", description: "Workout tips and healthy recipes", image: "fitness"),
        Board(id: UUID(), title: "Travel", description: "Explore the world and share experiences", image: "travel")
    ]
    
    // Add functions to fetch and display board data from a server or local storage
}
