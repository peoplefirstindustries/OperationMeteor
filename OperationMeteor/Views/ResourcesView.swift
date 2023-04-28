//
//  ResourcesView.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import SwiftUI

struct ResourcesView: View {
    @StateObject private var viewModel = ResourceViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Mental Health Resources")
                        .font(.title)
                        .padding(.top)

                    ForEach(viewModel.resources) { resource in
                        ResourceRow(resource: resource)
                    }
                    
                    Text("Practitioners")
                        .font(.title)
                        .padding(.top)

                    ForEach(viewModel.practitioners) { practitioner in
                        PractitionerRow(practitioner: practitioner)
                    }
                }
                .padding()
            }
            .navigationTitle("Resources")
        }
    }
}

struct ResourceRow: View {
    let resource: Resource

    var body: some View {
        VStack(alignment: .leading) {
            Text(resource.title)
                .font(.headline)
            Text(resource.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding(.bottom)
    }
}

struct PractitionerRow: View {
    let practitioner: Practitioner

    var body: some View {
        VStack(alignment: .leading) {
            Text(practitioner.name)
                .font(.headline)
            Text(practitioner.specialty)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding(.bottom)
    }
}

struct ResourcesView_Previews: PreviewProvider {
    static var previews: some View {
        ResourcesView()
    }
}
