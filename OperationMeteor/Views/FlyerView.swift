//
//  FlyerView.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import SwiftUI

struct FlyerView: View {
    @StateObject private var viewModel = FlyerViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Flyer Content")
                        .font(.title)
                        .padding(.top)
                    
                    ForEach(viewModel.flyers) { flyer in
                        FlyerRow(flyer: flyer)
                    }
                    
                    Text("Comics")
                        .font(.title)
                        .padding(.top)
                    
                    ForEach(viewModel.comics) { comic in
                        ComicRow(comic: comic)
                    }
                }
                .padding()
            }
            .navigationTitle("Flyer & Comics")
        }
    }
}

struct FlyerRow: View {
    let flyer: Flyer

    var body: some View {
        VStack(alignment: .leading) {
            Text(flyer.title)
                .font(.headline)
            Text(flyer.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding(.bottom)
    }
}

struct ComicRow: View {
    let comic: Comic

    var body: some View {
        VStack {
            Image(comic.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
            Text(comic.title)
                .font(.headline)
        }
        .padding(.bottom)
    }
}

struct FlyerView_Previews: PreviewProvider {
    static var previews: some View {
        FlyerView()
    }
}
