//
//  TaskTableViewCell.swift
//  TaskManageriOS
//
//  Created by Matthew Riley on 11/2/18.
//  Copyright © 2018 Matthew Riley. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var completeByDateLabel: UILabel!
    @IBOutlet weak var statusView: UIView!
    
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


