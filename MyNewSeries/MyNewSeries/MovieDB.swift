//
//  MovieDB.swift
//  MyNewSeries
//
//  Created by Cleís Aurora Pereira on 15/11/20.
//

final class MovieDB {
    private(set) var movies: [Movie] = []

    private init() { }

    static let shared = MovieDB()

    func add(movies new: [Movie]) {
        movies.append(contentsOf: new)
    }
}
