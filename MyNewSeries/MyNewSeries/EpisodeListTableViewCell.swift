//
//  EpisodeListTableViewCell.swift
//  MyNewSeries
//
//  Created by Cleís Aurora Pereira on 16/11/20.
//

import UIKit
import Foundation

final class EpisodeListTableViewCell: UITableViewCell {
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var numberLabel: UILabel!
    @IBOutlet private weak var summaryLabel: UILabel!

    func setup (episode: Episode) {
        nameLabel.text = episode.name

        if let number = episode.number {
            numberLabel.text = "\(number)"
        } else {
            numberLabel.text = " - "
        }

        let data = Data(episode.summary.utf8)
        summaryLabel.attributedText = try? NSAttributedString(
            data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil
        )
    }
}
