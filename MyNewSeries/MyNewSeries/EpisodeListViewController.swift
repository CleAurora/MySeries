//
//  EpisodeListViewController.swift
//  MyNewSeries
//
//  Created by Cleís Aurora Pereira on 16/11/20.
//

import UIKit
import Alamofire

final class EpisodeListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var showImageView: UIImageView!
    @IBOutlet weak var summarySeasonLabel: UITextView!
    @IBOutlet weak var seasonLabel: UILabel!

    private var episodes = [Episode]()

    var movie: Movie?
    var season: Season?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let season = season {
            setupView(season: season)
            loadEpisode(id: season.id)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let identifier = String(describing: EpisodeListTableViewCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)

        if let episodeListTableViewCell = cell as? EpisodeListTableViewCell {
            let episode = episodes[indexPath.row]

            episodeListTableViewCell.setup(episode: episode)
        }

        return cell
    }

    private func setupView(season: Season) {
        if let movie = movie {
            showImageView.kf.setImage(with: movie.image.original)
        }

        var seasonName = "Season \(season.number)"

        if !season.name.isEmpty {
            seasonName += ": \(season.name)"
        }

        seasonLabel.text = seasonName
        summarySeasonLabel.text = season.summary
    }

    private func loadEpisode(id: Int) {
        let request = "http://api.tvmaze.com/seasons/\(id)/episodes"

        AF.request(request).responseDecodable(of: [Episode].self) { response in
            do {
                self.episodes = try response.result.get()
                self.tableView.reloadData()
            } catch {
                self.show(error: error)
            }
        }
    }
}
