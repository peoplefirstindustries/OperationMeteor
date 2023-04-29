//
//  BoardViewModel.swift
//  OperationMeteor
//
//  Created by Richard Crichlow on 4/27/23.
//

import Foundation

class BoardViewModel: ObservableObject {
    @Published var boards: [Board] = [
        Board(id: UUID(), title: "Cooking", description: "Share recipes and cooking tips", image: "logo_black"),
        Board(id: UUID(), title: "Gardening", description: "Discuss gardening techniques and tips", image: "leaf"),
        Board(id: UUID(), title: "Photography", description: "Showcase your photos and discuss techniques", image: "camera"),
        Board(id: UUID(), title: "Art", description: "Share your artwork and discuss techniques", image: "paintpalette.fill"),
        Board(id: UUID(), title: "Fashion", description: "Discuss fashion trends and share your style", image: "person.crop.circle.badge.checkmark"),
        Board(id: UUID(), title: "Gaming", description: "Discuss video games and strategies", image: "gamecontroller"),
        Board(id: UUID(), title: "Books", description: "Share your favorite books and discuss literature", image: "book.fill"),
        Board(id: UUID(), title: "Movies", description: "Discuss movies and share your reviews", image: "film.fill"),
        Board(id: UUID(), title: "Music", description: "Share your favorite songs and discuss music", image: "music.note"),
        Board(id: UUID(), title: "Pets", description: "Discuss pet care and share pictures of your furry friends", image: "hare.fill"),
        Board(id: UUID(), title: "Technology", description: "Discuss the latest tech trends and gadgets", image: "desktopcomputer"),
        Board(id: UUID(), title: "Finance", description: "Discuss personal finance and investment strategies", image: "dollarsign.square.fill"),
        Board(id: UUID(), title: "Sports", description: "Discuss sports news and share your favorite teams", image: "sportscourt.fill"),
        Board(id: UUID(), title: "Education", description: "Discuss education news and share teaching resources", image: "book.closed.fill"),
        Board(id: UUID(), title: "Politics", description: "Discuss politics and current events", image: "megaphone.fill"),
        Board(id: UUID(), title: "Health", description: "Discuss health news and share healthy living tips", image: "heart.fill"),
        Board(id: UUID(), title: "Environment", description: "Discuss environmental news and share sustainability tips", image: "leaf.fill"),
        Board(id: UUID(), title: "Parenting", description: "Discuss parenting tips and share family experiences", image: "person.2.fill"),
        Board(id: UUID(), title: "Beauty", description: "Share beauty tips and makeup tutorials", image: "sparkles"),
        Board(id: UUID(), title: "DIY Home Decor", description: "Share DIY home decor ideas and projects", image: "house.fill")
    ]
    
    // Add functions to fetch and display board data from a server or local storage
}
