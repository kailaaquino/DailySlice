//
//  SubtaskCell.swift
//  DailySlice
//
//  Created by Kaila Aquino on 8/4/25.
//

import UIKit

class SubtaskCell: UITableViewCell {

    @IBOutlet weak var subtaskTitle: UILabel!
    
    @IBOutlet weak var completeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let image = UIImage(systemName: "circle")
            completeButton.setImage(image, for: .normal)
            completeButton.tintColor = .systemBlue
            
            // Optional: set a selected state image too
            let selectedImage = UIImage(systemName: "checkmark.circle.fill")
            completeButton.setImage(selectedImage, for: .selected)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
