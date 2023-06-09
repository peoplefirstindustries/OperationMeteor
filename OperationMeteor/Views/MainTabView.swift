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
        }
        .background(Color.clear)
    }
}

struct TabBar: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 30) {
                        ForEach(NavigationPath.allCases, id: \.self) { item in
                            
                            HStack {
                                
                                Spacer()
                                
                                VStack(alignment: .leading) {
                                    Text(item.rawValue)
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding(30)
                                        .lineLimit(4)
                                    
                                    TabItem(title: item.rawValue, path: item)
                                    
                                    Spacer()
                                }
                                .background(Color(.lightGray).opacity(0.2))
                                .cornerRadius(30)
                                .shadow(color: Color(.blue).opacity(0.3), radius: 20, x: 0, y: 20)
                                
                                Spacer()
                                
                            }
                            .frame(width: 300)
                        }
                    }
                    .padding(.horizontal, 16)
                    .frame(height: 600)
                }
                Spacer()
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
                        .rotation3DEffect(Angle(degrees: Double(geometry.frame(in: .global).minX - 30) / -40), axis: (x: 0, y: 10.0, z: 0))
                }
                .background(colors(for: path).background)
                                .cornerRadius(10)
                                .shadow(color: colors(for: path).shadow, radius: 5, x: 0, y: 5)
                            }
            .padding(.horizontal, 16)
        }
    }
    
    func colors(for path: NavigationPath) -> (background: Color, shadow: Color) {
        switch path {
        case .home:
            return (.blue, .blue.opacity(0.4))
        case .volunteerSignUp:
            return (.orange, .orange.opacity(0.4))
        case .jobs:
            return (.purple, .purple.opacity(0.4))
        case .resources:
            return (.green, .green.opacity(0.4))
        case .flyer:
            return (.red, .red.opacity(0.4))
        case .localMap:
            return (.pink, .pink.opacity(0.4))
        case .leaderboard:
            return (.yellow, .yellow.opacity(0.4))
        case .taskMarket:
            return (.gray, .gray.opacity(0.4))
        case .communityBoards:
            return (.teal, .teal.opacity(0.4))
        case .profile:
            return (.indigo, .indigo.opacity(0.4))
        }
    }
    
    @ViewBuilder
    func view(for path: NavigationPath) -> some View {
        let (background, shadow) = colors(for: path)
        
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
