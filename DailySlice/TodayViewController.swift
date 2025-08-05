//
//  TodayViewController.swift
//  DailySlice
//
//  Created by Kaila Aquino on 8/5/25.
//

import UIKit

class TodayViewController: UITableViewCell {

    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBOutlet weak var todaysSubtaskLabel: UILabel!
    
    @IBOutlet weak var todaysGoalLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
