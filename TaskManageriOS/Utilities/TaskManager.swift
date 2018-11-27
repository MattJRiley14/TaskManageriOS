//
//  TaskManager.swift
//  TaskManageriOS
//
//  Created by Matthew Riley on 11/1/18.
//  Copyright © 2018 Matthew Riley. All rights reserved.
//

import Foundation

// This is the class that will hold our task array and related functions
class TaskManager {
    // Allows TaskManager class to be used throughout the project
    static let sharedInstance = TaskManager()

    // Array of Tasks
    var taskArray: [Task] = [
        Task(title: "Go to Wal-Mart", taskDetails: "Buy everything on my list and Lauren's list"),
        Task(title: "Call Papi", taskDetails: "Ask him if he needs anything from the grocery store"),
        Task(title: "Shave", taskDetails: "Find charger for beard trimmer")
    ]
    
    // Function used to return amount of tasks in array
    func getTaskCount() -> Int {
        return taskArray.count
    }

    // Function used to select a certain task from the taskArray
    func getTask(at index: Int) -> Task {
        return taskArray[index]
    }

    // Function used to add a new Task to the taskArray
    func addTask(task: Task) {
        taskArray.append(task)
    }

    // Function used to remove a Task from the taskArray
    func removeTask(at index: Int) {
        taskArray.remove(at: index)
    }

    // Function used to mark a task complete or not complete (Including setting the complete by date or removing the complete by date)
    func markTaskCompleteOrNot(at index: Int) {
        let taskForIndex = taskArray[index]
        
        taskForIndex.notCompleted = !taskForIndex.notCompleted
        
        if !taskForIndex.notCompleted {
            taskForIndex.completeByDate = nil
        } else {
            taskForIndex.completeByDate = Calendar.current.date(byAdding: .day, value: 14, to: Date())
        }
    }
}














