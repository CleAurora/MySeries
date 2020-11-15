//
//  SeasonListTableViewCell.swift
//  MyNewSeries
//
//  Created by Cleís Aurora Pereira on 15/11/20.
//

import UIKit

final class SeasonListTableViewCell: UITableViewCell {
    @IBOutlet private weak var nameLabel: UILabel!

    func setup(season: Season) {
        var seasonName = "Season \(season.number)"

        if !season.name.isEmpty {
            seasonName += ": \(season.name)"
        }

        nameLabel.text = seasonName
    }
}
