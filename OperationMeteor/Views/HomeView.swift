//
//  HomeView.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            NavigationLink("Volunteer Sign Up", value: NavigationPath.volunteerSignUp)
            // Add other NavigationLinks for other views
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
