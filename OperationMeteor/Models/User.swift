//
//  User.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import Foundation

struct User: Identifiable {
    let id: UUID
    let name: String
    let shares: Int
}
