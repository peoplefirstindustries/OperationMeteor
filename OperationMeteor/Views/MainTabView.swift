//
//  MainTabView.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab: NavigationPath = .home

    var body: some View {
        TabView(selection: $selectedTab) {
            TabBar()
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarHidden(true)
        }
    }
}

struct TabBar: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 30) {
                        ForEach(NavigationPath.allCases, id: \.self) { item in
                            TabItem(title: item.rawValue, path: item)
                        }
                    }
                    .padding(.horizontal, 16)
                }
            }
        }
    }
}

struct TabItem: View {
    let title: String
    let path: NavigationPath

    var body: some View {
        GeometryReader { geometry in
            NavigationLink(destination: view(for: path)) {
                VStack {
                    view(for: path)
                        .frame(width: 246, height: 360)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 5)
                        .rotation3DEffect(Angle(degrees:
                            Double(geometry.frame(in: .global).minX - 30) / -40), axis: (x: 0, y: 10.0, z: 0))
                }
            }
            .padding(.horizontal, 16)
        }
    }

    @ViewBuilder
    func view(for path: NavigationPath) -> some View {
        switch path {
        case .home:
            HomeView()
        case .volunteerSignUp:
            VolunteerSignUpView()
        case .jobs:
            JobsView()
        case .resources:
            ResourcesView()
        case .flyer:
            FlyerView()
        case .localMap:
            LocalMapView()
        case .leaderboard:
            LeaderboardView()
        case .taskMarket:
            TaskMarketView()
        case .communityBoards:
            CommunityBoardsView()
        case .profile:
            ProfileView()
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
