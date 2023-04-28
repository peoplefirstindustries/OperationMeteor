//
//  LocalMapViewModel.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import Foundation
import MapKit

class LocalMapViewModel: NSObject, ObservableObject {
    @Published var annotations: [CustomAnnotation] = []

    func fetchData() {
        // Fetch data for events, businesses, and restaurants

        let sampleEvent = CustomAnnotation(title: "Sample Event", coordinate: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060))
        let sampleBusiness = CustomAnnotation(title: "Sample Business", coordinate: CLLocationCoordinate2D(latitude: 40.7138, longitude: -74.0070))
        let sampleRestaurant = CustomAnnotation(title: "Sample Restaurant", coordinate: CLLocationCoordinate2D(latitude: 40.7148, longitude: -74.0080))

        // Combine fetched data into an array of CustomAnnotation objects
        let sampleAnnotations = [sampleEvent, sampleBusiness, sampleRestaurant]

        DispatchQueue.main.async {
            self.annotations = sampleAnnotations
        }
    }

}

