//
//  TaskMarketView.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import SwiftUI

struct TaskMarketView: View {
    @StateObject private var viewModel = TaskViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.tasks) { task in
                TaskRow(task: task)
            }
            .navigationTitle("Task Market")
        }
    }
}

struct TaskRow: View {
    let task: Task

    var body: some View {
        VStack(alignment: .leading) {
            Text(task.title)
                .font(.headline)
            Text(task.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

struct TaskMarketView_Previews: PreviewProvider {
    static var previews: some View {
        TaskMarketView()
    }
}
