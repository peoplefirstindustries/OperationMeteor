//
//  JobViewModel.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import Foundation

class JobViewModel: ObservableObject {
    @Published var jobs: [Job] = [
        Job(id: UUID(), title: "Software Engineer", company: "Tech Company"),
        Job(id: UUID(), title: "Product Manager", company: "Startup")
    ]

    @Published var upskillingOpportunities: [UpskillingOpportunity] = [
        UpskillingOpportunity(id: UUID(), title: "Web Development Course", description: "Learn web development in 12 weeks"),
        UpskillingOpportunity(id: UUID(), title: "Data Science Bootcamp", description: "Become a data scientist in 16 weeks")
    ]

    // Add functions to fetch and display job and upskilling opportunity data from a server or local storage
}
