//
//  UserViewModel.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var users: [User] = [
        User(id: UUID(), name: "Alice", shares: 30),
        User(id: UUID(), name: "Bob", shares: 25),
        User(id: UUID(), name: "Carol", shares: 15)
    ]

    // Add functions to fetch and display user rankings based on sharing activity from a server or local storage
}
