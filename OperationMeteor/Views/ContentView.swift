//
//  ContentView.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import SwiftUI

enum NavigationPath: String, Hashable, CaseIterable {
    case home = "Home"
    case volunteerSignUp = "Volunteer"
    case jobs = "Jobs"
    case resources = "Resources"
    case flyer = "Flyer"
    case localMap = "Local Map"
    case leaderboard = "Leaderboard"
    case taskMarket = "Task Market"
    case communityBoards = "Community"
    case profile = "Profile"
}

struct ContentView: View {
    var body: some View {
        MainTabView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
