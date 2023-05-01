//
//  ProfileView.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import SwiftUI
import Firebase

struct ProfileView: View {
    @State private var showCreateAccountView = false
    @State private var email = ""
    @State private var password = ""
    @StateObject private var viewModel = AuthenticationViewModel()
    @StateObject private var dataManager = DataManager()
    
    var body: some View {
        if viewModel.userIsLoggedIn {
            ListView()
                .environmentObject(dataManager)
                .environmentObject(viewModel)
        } else {
            content
        }

    }
    
    var content: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.pink, .red], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 1000, height: 400)
                .rotationEffect(.degrees(135))
                .offset(y: -380)
            
            VStack(spacing: 20) {
                Text("Welcome")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .offset(x: -100, y: -100)
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                
                Button(action: {
                    showCreateAccountView.toggle()
                }, label: {
                    Text("Sign Up")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    viewModel.signIn(withEmail: email, password: password)
                }, label: {
                    Text("Already have an account? Login")
                        .foregroundColor(.white)
                })

            }
            .frame(width: 350)
            .onAppear {
                Auth.auth().addStateDidChangeListener { auth, user in
                    if user != nil {
                        viewModel.userIsLoggedIn.toggle()
                    }
                }
                viewModel.signInCompletion = {
                    viewModel.userIsLoggedIn = true
                }
            }
        }
        .navigationTitle("Profile")
        .sheet(isPresented: $showCreateAccountView, content: {
            CreateAccountView()
        })
    }


    
}

struct ProfileView_Previews: PreviewProvider {

    static var previews: some View {
        ProfileView()
    }
}
