//
//  EventTableViewCell.swift
//  Eco_p
//
//  Created by 마혁진 on 2022/10/12.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    @IBOutlet weak var ImageViewField: UIImageView!
    @IBOutlet weak var ImageContent: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
