//
//  Resource.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import Foundation

struct Resource: Identifiable {
    var id = UUID()
    var title: String
    var category: String
    var description: String
    var link: String
}
