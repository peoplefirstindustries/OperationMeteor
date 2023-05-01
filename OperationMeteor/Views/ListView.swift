//
//  ListView.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 5/1/23.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var dataManager: DataManager
    @EnvironmentObject var viewModel: AuthenticationViewModel
    
    var body: some View {
        NavigationView {
            List(dataManager.dogs, id: \.id) { dog in
                Text(dog.breed)
            }
            .navigationBarItems(
                leading: Button(action: {
                    viewModel.signOut()
                }, label: {
                    Text("Logout")
                }),
                trailing: Button(action: {
                    // add
                }, label: {
                    Image(systemName: "plus")
                })
            )
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
            .environmentObject(DataManager())
            .environmentObject(AuthenticationViewModel())
    }
}
