//
//  Goal.swift
//  DailySlice
//
//  Created by Kaila Aquino on 8/4/25.
//

import Foundation

struct Goal: Codable{
    var title: String
    var isComplete: Bool = false
    var subtasks: [Subtask]
    var id: UUID = UUID()
    
    init(title:String, subtasks: [Subtask] = [], isComplete: Bool = false){
        self.title = title
        self.subtasks = subtasks
        self.isComplete = isComplete
        self.id = UUID()
    }
}
    
extension Goal{
    static let goalsKey = "Goals"
    
    static func save(_ goals: [Goal]){
        let defaults = UserDefaults.standard
        let encodedData = try! JSONEncoder().encode(goals)
        defaults.set(encodedData, forKey: goalsKey)
    }
    
    static func getGoals() -> [Goal] {
        let defaults = UserDefaults.standard
        if let data = defaults.data(forKey: goalsKey) {
            let decodedTasks = try! JSONDecoder().decode([Goal].self, from: data)
            return decodedTasks
        }
        else {
            return []
        }
        
    }
    
    func save() {
        
        var goals = Goal.getGoals()
        
        // if goal exist, update
        if let idx = goals.firstIndex(where: { $0.id == self.id }) {
            goals.remove(at: idx)
            goals.insert(self, at: idx)
        }
        // else, add it
        else {
            goals.append(self)
        }
        Goal.save(goals)

    }
    
    func delete(){
        var goals = Goal.getGoals()
        
        goals.removeAll { $0.id == self.id }
        
        Goal.save(goals)

    }
    
    
    
}
    
    
