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
    
    var onCompleteButtonTapped: ((Goal) -> Void)?

    var goal: Goal!

    
    @IBAction func completeButtonTapped(_ sender: UIButton) {
        goal.isComplete = !goal.isComplete
        update(with: goal)
        onCompleteButtonTapped?(goal)
    }
    
    func configure(with goal: Goal, onCompleteButtonTapped: ((Goal) -> Void)?){
        self.goal = goal
        self.onCompleteButtonTapped = onCompleteButtonTapped
        
        completeButton.setImage(UIImage(systemName: "circle"), for: .normal)
        completeButton.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .selected)

        update(with: goal)
    }
    
    private func update(with goal: Goal){
        goalTitle.text = goal.title
        completeButton.isSelected = goal.isComplete
        completeButton.tintColor = goal.isComplete ? .systemBlue: .tertiaryLabel
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
