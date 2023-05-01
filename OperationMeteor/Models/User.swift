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
    
    let profileImageURL: String?
    let backgroundURL: String?
    let bio: String?
    let userId: String
    let displayName: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case shares
        case firstName
        case lastName
        case email
        case phoneNumber
        
        case profileImageURL = "profileImage"
        case backgroundURL = "backgroundImage"
        case bio
        case userId
        case displayName
    }
}
