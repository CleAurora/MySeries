//
//  ShowViewCell.swift
//  SeriesApi
//
//  Created by Cleís Aurora Pereira on 13/11/20.
//

import UIKit

class ShowViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!


    func setup(showName: Show){
        nameLabel.text = showName.name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
