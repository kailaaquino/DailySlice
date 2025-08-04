//
//  GoalCell.swift
//  DailySlice
//
//  Created by Kaila Aquino on 8/4/25.
//

import UIKit

class GoalCell: UITableViewCell {
    
    @IBOutlet weak var completeButton: UIButton!
    
    @IBOutlet weak var goalTitle: UILabel!
    
    @IBOutlet weak var viewTaskButton: UIButton!
    
    @IBAction func completeButtonTapped(_ sender: Any) {
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
