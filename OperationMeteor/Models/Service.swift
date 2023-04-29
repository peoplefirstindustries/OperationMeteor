//
//  Service.swift
//  CreativeCounselingPlus
//
//  Created by Richard Crichlow on 4/1/23.
//

import Foundation

enum ImageSource: Codable {
    case localAsset(name: String)
    case url(URL)
    
    enum CodingKeys: CodingKey {
        case localAsset, url
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        if let assetName = try? container.decode(String.self, forKey: .localAsset) {
            self = .localAsset(name: assetName)
        } else if let url = try? container.decode(URL.self, forKey: .url) {
            self = .url(url)
        } else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unable to decode ImageSource"))
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .localAsset(let name):
            try container.encode(name, forKey: .localAsset)
        case .url(let url):
            try container.encode(url, forKey: .url)
        }
    }
    
    static func == (lhs: ImageSource, rhs: ImageSource) -> Bool {
           switch (lhs, rhs) {
           case (.localAsset(let lhsName), .localAsset(let rhsName)):
               return lhsName == rhsName
           case (.url(let lhsURL), .url(let rhsURL)):
               return lhsURL == rhsURL
           default:
               return false
           }
       }
}

struct Service: Identifiable, Hashable, Codable {
    let id = UUID()
    let title: String
    let category: String
    let description: String
    let priceRange: String
    let imageSource: ImageSource
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(title)
        hasher.combine(category)
        hasher.combine(description)
        hasher.combine(priceRange)
    }
    
    static func == (lhs: Service, rhs: Service) -> Bool {
        lhs.id == rhs.id &&
        lhs.title == rhs.title &&
        lhs.category == rhs.category &&
        lhs.description == rhs.description &&
        lhs.priceRange == rhs.priceRange &&
        lhs.imageSource == rhs.imageSource
    }
}
