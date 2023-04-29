//
//  User.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import Foundation

struct User: Identifiable, Codable {
    let id: UUID
    let name: String
    let shares: Int
    let firstName: String
    let lastName: String
    let email: String
    let phoneNumber: String
}
