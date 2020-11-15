//
//  SeasonListViewController.swift
//  MyNewSeries
//
//  Created by Cleís Aurora Pereira on 15/11/20.
//

import UIKit
import Alamofire

final class SeasonListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet private weak var showImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var genderLabel: UILabel!
    @IBOutlet private weak var classificationLabel: UILabel!
    @IBOutlet private weak var tableView: UITableView!

    var movie: Movie?

    private var seasons = [Season]()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()

        if let movie = movie {
            loadSeasons(id: movie.id)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        seasons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = String(describing: SeasonListTableViewCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)

        if let seasonListTableViewCell = cell as? SeasonListTableViewCell {
            let season = seasons[indexPath.row]

            seasonListTableViewCell.setup(season: season)
        }

        return cell
    }


    private func setupView() {
        if let movie = movie {
            title = movie.name
            showImageView.kf.setImage(with: movie.image.original)
            nameLabel.text = movie.name
            genderLabel.text = movie.genres.joined(separator: ", ")
            classificationLabel.text = ""

            if let average = movie.rating.average {
                classificationLabel.text = "\(average)⭐️"
            }
        }
    }

    private func loadSeasons(id: Int) {
        let request = "http://api.tvmaze.com/shows/\(id)/seasons"

        AF.request(request).responseDecodable(of: [Season].self) { response in
            do {
                self.seasons = try response.result.get()
                self.tableView.reloadData()
            } catch {
                self.show(error: error)
            }
        }
    }
}
