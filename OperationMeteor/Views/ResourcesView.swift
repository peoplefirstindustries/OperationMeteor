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
        TabView {
            NavigationView {
                AboutView()
            }
            .tabItem {
                Image(systemName: "info.circle")
                Text("About")
            }

            NavigationView {
                BookSessionView()
            }
            .tabItem {
                Image(systemName: "calendar.badge.plus")
                Text("Book Session")
            }

            NavigationView {
                SearchResourcesView()
            }
            .tabItem {
                Image(systemName: "books.vertical")
                Text("Resources")
            }

            NavigationView {
                TestimonialsView(viewModel: TestimonialViewModel(apiClient: MockTestimonialAPIClient()))
            }
            .tabItem {
                Image(systemName: "text.bubble")
                Text("Testimonials")
            }

            NavigationView {
                ContactUsView()
            }
            .tabItem {
                Image(systemName: "envelope")
                Text("Contact Us")
            }

            NavigationView {
                ProfileSettingsView()
            }
            .tabItem {
                Image(systemName: "person.crop.circle")
                Text("Profile Settings")
            }

            NavigationView {
                AppInfoView()
            }
            .tabItem {
                Image(systemName: "gear")
                Text("App Info")
            }
        }
    }
}

struct ResourcesView_Previews: PreviewProvider {
    static var previews: some View {
        ResourcesView()
    }
}
