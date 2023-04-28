//
//  Event.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import Foundation
import MapKit

struct Event: Identifiable {
    let id: UUID
    let title: String
    let coordinate: CLLocationCoordinate2D
}
