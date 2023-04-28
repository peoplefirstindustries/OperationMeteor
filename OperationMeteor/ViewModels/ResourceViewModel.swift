//
//  ResourceViewModel.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import Foundation

class ResourceViewModel: ObservableObject {
    @Published var resources: [Resource] = [
        Resource(id: UUID(), title: "Resource 1", description: "Mental health resource description"),
        Resource(id: UUID(), title: "Resource 2", description: "Another mental health resource description")
    ]

    @Published var practitioners: [Practitioner] = [
        Practitioner(id: UUID(), name: "Dr. John Smith", specialty: "Clinical Psychologist"),
        Practitioner(id: UUID(), name: "Dr. Jane Doe", specialty: "Psychiatrist")
    ]

    // Add functions to fetch and display resource and practitioner data from a server or local storage
}
