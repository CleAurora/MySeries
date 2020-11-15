//
//  MovieListViewController.swift
//  MyNewSeries
//
//  Created by Cleís Aurora Pereira on 15/11/20.
//

import UIKit
import Alamofire

final class MovieListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet private weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        loadMovies()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let identifier = String(describing: SeasonListViewController.self)
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: identifier)
        let movie = MovieDB.shared.movies[indexPath.row]

        if let seasonListViewController = viewController as? SeasonListViewController {
            seasonListViewController.movie = movie
        }

        navigationController?.pushViewController(viewController, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        MovieDB.shared.movies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = String(describing: MovieListTableViewCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)

        if let movieListTableViewCell = cell as? MovieListTableViewCell {
            let movie = MovieDB.shared.movies[indexPath.row]

            movieListTableViewCell.setup(movie: movie)
        }

        return cell
    }

    private func loadMovies() {
        let request = "http://api.tvmaze.com/shows"

        AF.request(request).responseDecodable(of: [Movie].self) { response in
            do {
                let movies = try response.result.get()

                MovieDB.shared.add(movies: movies)

                self.tableView.reloadData()
            } catch {
                self.show(error: error)
            }
        }
    }
}

