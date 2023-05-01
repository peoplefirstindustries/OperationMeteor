//
//  ProfileView.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var showCreateAccountView = false
    
    var body: some View {
        VStack {
            Button(action: {
                showCreateAccountView.toggle()
            }, label: {
                Text("Create Account")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            })
        }
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
