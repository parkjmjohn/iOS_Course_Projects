//
//  songCell.swift
//  OffProject4
//
//  Created by John Park on 10/22/17.
//  Copyright © 2017 John Park. All rights reserved.
//

import UIKit

class songCell: UITableViewCell {
    var index: Int = -1
    var delegate: ViewController?

    @IBOutlet weak var songLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var coverLabel: UIImageView!
    @IBAction func editPressed(_ sender: Any) {
        delegate?.reddit = index
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
