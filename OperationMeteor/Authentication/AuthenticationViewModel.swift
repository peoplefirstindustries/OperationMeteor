//
//  AuthenticationViewModel.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 5/1/23.
//

import Foundation
import Firebase
import SwiftUI

class AuthenticationViewModel: ObservableObject {
    
    enum SignInState {
        case signedIn
        case signedOut
    }
    
    @Published var state: SignInState = .signedOut
    @Published var userIsLoggedIn = false
    var signInCompletion: (() -> Void)?

    func signIn(withEmail: String, password: String) {
        Auth.auth().signIn(withEmail: withEmail, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
            } else {
                self.signInCompletion?()
            }
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
            userIsLoggedIn = false
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }

}
