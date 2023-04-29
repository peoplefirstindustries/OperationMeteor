//
//  ProfileSettingsView.swift
//  CreativeCounselingPlus
//
//  Created by Richard Crichlow on 4/1/23.
//

import SwiftUI

struct ProfileSettingsView: View {
    @State private var userName = ""
    @State private var userEmail = ""
    @State private var userPhoneNumber = ""

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Profile Information")) {
                    TextField("Name", text: $userName)
                    TextField("Email", text: $userEmail)
                        .keyboardType(.emailAddress)
                    TextField("Phone Number", text: $userPhoneNumber)
                        .keyboardType(.phonePad)
                }
                
                Section {
                    Button(action: {
                        // Implement saving changes here
                    }) {
                        Text("Save Changes")
                    }
                }
            }
            .navigationTitle("Profile Settings")
        }
    }
}

struct ProfileSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettingsView()
    }
}
