//
//  GoalsViewController.swift
//  DailySlice
//
//  Created by Kaila Aquino on 8/4/25.
//

import UIKit

class GoalsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var goalsTableView: UITableView!
    
    let sampleGoals = [
        Goal(title: "Workout", isComplete: false),
            Goal(title: "Study", isComplete: false),
            Goal(title: "Drink water", isComplete: true)
       ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        goalsTableView.delegate = self
        goalsTableView.dataSource = self
        

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sampleGoals.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let goal = sampleGoals[indexPath.row]
               let cell = tableView.dequeueReusableCell(withIdentifier: "GoalCell", for: indexPath) as! GoalCell

               cell.goalTitle.text = goal.title
               cell.completeButton.isSelected = goal.isComplete
               cell.completeButton.tintColor = goal.isComplete ? .systemBlue : .tertiaryLabel
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
