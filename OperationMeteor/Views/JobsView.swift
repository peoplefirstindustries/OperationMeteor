//
//  JobsView.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import SwiftUI

struct JobsView: View {
    @StateObject private var viewModel = JobViewModel()

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Job Listings")) {
                    ForEach(viewModel.jobs) { job in
                        JobRow(job: job)
                    }
                }

                Section(header: Text("Upskilling Opportunities")) {
                    ForEach(viewModel.upskillingOpportunities) { opportunity in
                        UpskillingRow(opportunity: opportunity)
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Jobs & Upskilling")
        }
    }
}

struct JobRow: View {
    let job: Job

    var body: some View {
        VStack(alignment: .leading) {
            Text(job.title)
                .font(.headline)
            Text(job.company)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

struct UpskillingRow: View {
    let opportunity: UpskillingOpportunity

    var body: some View {
        VStack(alignment: .leading) {
            Text(opportunity.title)
                .font(.headline)
            Text(opportunity.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

struct JobsView_Previews: PreviewProvider {
    static var previews: some View {
        JobsView()
    }
}
