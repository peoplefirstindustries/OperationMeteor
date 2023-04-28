//
//  TaskViewModel.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import Foundation

class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = [
        Task(id: UUID(), title: "Clean the house", description: "Looking for someone to help clean a 3-bedroom house"),
        Task(id: UUID(), title: "Mow the lawn", description: "Need someone to mow the front and back lawn"),
        Task(id: UUID(), title: "Assemble furniture", description: "Help needed to assemble a few IKEA furniture items")
    ]
    
    // Add functions to fetch and display task data from a server or local storage
}
