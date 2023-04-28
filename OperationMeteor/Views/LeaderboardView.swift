//
//  LeaderboardView.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import SwiftUI

struct LeaderboardView: View {
    @StateObject private var viewModel = UserViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.users) { user in
                LeaderboardRow(user: user)
            }
            .navigationTitle("Leaderboard")
        }
    }
}

struct LeaderboardRow: View {
    let user: User

    var body: some View {
        HStack {
            Text(user.name)
                .font(.headline)
            Spacer()
            Text("\(user.shares)")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

struct LeaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardView()
    }
}
