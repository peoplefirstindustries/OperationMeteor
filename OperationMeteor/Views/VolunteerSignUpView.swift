//
//  VolunteerSignUpView.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import SwiftUI

struct VolunteerSignUpView: View {
    @StateObject private var viewModel = VolunteerViewModel()
    
    @State private var name = ""
    @State private var email = ""
    @State private var phoneNumber = ""
    @State private var city = ""
    
    private var isFormValid: Bool {
        return viewModel.isValidName(name) && viewModel.isValidEmail(email) && viewModel.isValidPhoneNumber(phoneNumber) && viewModel.isValidCity(city)
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("Name", text: $name)
                    TextField("Email", text: $email)
                    TextField("Phone Number", text: $phoneNumber)
                }
                
                Section(header: Text("Location")) {
                    TextField("City", text: $city)
                }
                
                Button(action: {
                    viewModel.signUp(name: name, email: email, phoneNumber: phoneNumber, city: city)
                    // Clear the form fields after submission
                    name = ""
                    email = ""
                    phoneNumber = ""
                    city = ""
                }) {
                    Text("Sign Up")
                }
                .disabled(!isFormValid)
            }
            .navigationBarTitle("Volunteer Sign Up")
        }
    }
}

struct VolunteerSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        VolunteerSignUpView()
    }
}

