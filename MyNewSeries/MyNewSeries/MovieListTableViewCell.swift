//
//  MovieListTableViewCell.swift
//  MyNewSeries
//
//  Created by Cleís Aurora Pereira on 15/11/20.
//

import UIKit
import Kingfisher

final class MovieListTableViewCell: UITableViewCell {

    @IBOutlet private weak var movieImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var genderLabel: UILabel!
    @IBOutlet private weak var classificationLabel: UILabel!

    func setup(movie: Movie) {
        movieImageView.kf.setImage(with: movie.image.medium)
        nameLabel.text = movie.name
        genderLabel.text = movie.genres.joined(separator: ", ")
        classificationLabel.text = ""

        if let average = movie.rating.average {
            classificationLabel.text = "\(average)⭐️"
        }
    }

}
