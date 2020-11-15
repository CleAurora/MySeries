//
//  Movie.swift
//  MyNewSeries
//
//  Created by Cleís Aurora Pereira on 15/11/20.
//

import Foundation

struct Movie: Decodable {
    let id: Int
    let name: String
    let genres: [String]
    let rating: Rating
    let image: Image
    let summary: String
}

struct Rating: Decodable {
    let average: Double?
}

struct Image: Decodable {
    let medium: URL
    let original: URL
}

struct Season: Decodable {
    let id: Int
    let number: Int
    let name: String
    let summary: String?
}
