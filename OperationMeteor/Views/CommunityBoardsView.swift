//
//  CommunityBoardsView.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import SwiftUI

struct CommunityBoardsView: View {
    @StateObject private var viewModel = BoardViewModel()

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))], spacing: 20) {
                ForEach(viewModel.boards) { board in
                    BoardCardView(board: board)
                }
            }
            .padding()
        }
        .navigationTitle("Community Boards")
    }
}

struct BoardCardView: View {
    let board: Board

    var body: some View {
        VStack(alignment: .leading) {
            Image(board.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
            Text(board.title)
                .font(.headline)
            Text(board.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

struct CommunityBoardsView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityBoardsView()
    }
}
