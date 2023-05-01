//
//  CreateAccountView.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 5/1/23.
//

import SwiftUI
import Firebase

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
                        register()
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
    
    func register() {
        Auth.auth().createUser(withEmail: email, password: password) {result, error in
            if error != nil {
                print(error?.localizedDescription ?? "Registration Error")
            }
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
