//
//  PostTableViewCell.swift
//  inkedinClone
//
//  Created by Frank Entsie on 2024/03/12.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var mainLabel: UILabel!
    
//    let cellIdentifier:String = "PostTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
