//
//  UserViewModel.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var users: [User] = [
            User(id: UUID(), name: "Alice", shares: 30, firstName: "Alice", lastName: "Adams", email: "alice@example.com", phoneNumber: "555-111-1111"),
            User(id: UUID(), name: "Bob", shares: 25, firstName: "Bob", lastName: "Baker", email: "bob@example.com", phoneNumber: "555-222-2222"),
            User(id: UUID(), name: "Carol", shares: 15, firstName: "Carol", lastName: "Clark", email: "carol@example.com", phoneNumber: "555-333-3333"),
            User(id: UUID(), name: "Ian", shares: 28, firstName: "Ian", lastName: "Irving", email: "ian@example.com", phoneNumber: "555-101-0101"),
            User(id: UUID(), name: "Julia", shares: 42, firstName: "Julia", lastName: "Johnson", email: "julia@example.com", phoneNumber: "555-202-0202"),
            User(id: UUID(), name: "Kevin", shares: 23, firstName: "Kevin", lastName: "Klein", email: "kevin@example.com", phoneNumber: "555-303-0303"),
            User(id: UUID(), name: "Laura", shares: 15, firstName: "Laura", lastName: "Lewis", email: "laura@example.com", phoneNumber: "555-404-0404"),
            User(id: UUID(), name: "Mike", shares: 18, firstName: "Mike", lastName: "Martin", email: "mike@example.com", phoneNumber: "555-505-0505"),
            User(id: UUID(), name: "Nina", shares: 37, firstName: "Nina", lastName: "Newton", email: "nina@example.com", phoneNumber: "555-606-0606"),
            User(id: UUID(), name: "Oliver", shares: 8, firstName: "Oliver", lastName: "Olsen", email: "oliver@example.com", phoneNumber: "555-707-0707"),
            User(id: UUID(), name: "Pamela", shares: 45, firstName: "Pamela", lastName: "Parker", email: "pamela@example.com", phoneNumber: "555-808-0808"),
            User(id: UUID(), name: "Diana", shares: 20, firstName: "Diana", lastName: "Doe", email: "diana@example.com", phoneNumber: "555-444-4444"),
            User(id: UUID(), name: "Eric", shares: 10, firstName: "Eric", lastName: "Evans", email: "eric@example.com", phoneNumber: "555-555-5555"),
            User(id: UUID(), name: "Felicity", shares: 35, firstName: "Felicity", lastName: "Fisher", email: "felicity@example.com", phoneNumber: "555-666-6666"),
            User(id: UUID(), name: "George", shares: 12, firstName: "George", lastName: "Graham", email: "george@example.com", phoneNumber: "555-777-7777"),
            User(id: UUID(), name: "Hannah", shares: 50, firstName: "Hannah", lastName: "Henderson", email: "hannah@example.com", phoneNumber: "555-888-8888"),
            User(id: UUID(), name: "Yvette", shares: 22, firstName: "Yvette", lastName: "Young", email: "yvette@example.com", phoneNumber: "555-999-9999"),
            User(id: UUID(), name: "Zachary", shares: 45, firstName: "Zachary", lastName: "Zimmerman", email: "zachary@example.com", phoneNumber: "555-000-0000")
        ]

    // Add functions to fetch and display user rankings based on sharing activity from a server or local storage
}
