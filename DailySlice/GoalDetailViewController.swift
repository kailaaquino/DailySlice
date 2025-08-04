//
//  GoalDetailViewController.swift
//  DailySlice
//
//  Created by Kaila Aquino on 8/4/25.
//

import UIKit

class GoalDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var goalDetailTableView: UITableView!
    
    var subtasks: [Subtask] = [
        Subtask(title: "Subtask 1", isComplete: false),
        Subtask(title: "Subtask 2", isComplete: true),
        Subtask(title: "Subtask 3", isComplete: false),
        Subtask(title: "Subtask 4", isComplete: false),
        Subtask(title: "Subtask 5", isComplete: true)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        goalDetailTableView.delegate = self
        goalDetailTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SubtaskCell", for: indexPath) as? SubtaskCell else {
            return UITableViewCell()
        }

        let subtask = subtasks[indexPath.row]
        cell.subtaskTitle.text = subtask.title
        // Optional: show/hide checkmark
        // cell.checkmarkImageView.isHidden = !subtask.isComplete

        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
