//
//  LocalMapView.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import SwiftUI
import MapKit

struct LocalMapView: View {
    @StateObject private var viewModel = LocalMapViewModel()
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: viewModel.annotations) { annotation in
            MapAnnotation(coordinate: annotation.coordinate) {
                VStack {
                    Text(annotation.title)
                        .font(.caption)
                        .foregroundColor(.black)
                    Circle()
                        .fill(Color.red)
                        .frame(width: 10, height: 10)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: viewModel.fetchData)
    }
}

struct LocalMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocalMapView()
    }
}

