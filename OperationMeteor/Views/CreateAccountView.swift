//
//  CreateAccountView.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 5/1/23.
//

import SwiftUI

struct CreateAccountView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Email")) {
                        TextField("Enter email", text: $email)
                    }
                    Section(header: Text("Password")) {
                        SecureField("Enter password", text: $password)
                    }
                    Section(header: Text("Confirm Password")) {
                        SecureField("Re-enter password", text: $confirmPassword)
                    }
                }
            }
            .navigationBarTitle("Create Account", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        // Handle save action
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
