//
//  TaskManager.swift
//  TaskManageriOS
//
//  Created by Matthew Riley on 11/1/18.
//  Copyright © 2018 Matthew Riley. All rights reserved.
//

import Foundation

class TaskManager {
    var taskArray: [Task] = [
        Task(title: "Go to Wal-Mart", taskDetails: "Buy everything on my list and Lauren's list"),
        Task(title: "Call Papi", taskDetails: "Ask him if he needs anything from the grocery store"),
        Task(title: "Shave", taskDetails: "Find charger for beard trimmer")
    ]

    
    func getTaskCount() -> Int {
        return taskArray.count
    }
    
    func getTask(at index: Int) -> Task {
        return taskArray[index]
    }
    
    func addTask(task: Task) {
        taskArray.append(task)
    }
    
    func removeTask(at index: Int) {
        taskArray.remove(at: index)
    }
}














