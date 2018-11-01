//
//  Task.swift
//  TaskManageriOS
//
//  Created by Matthew Riley on 11/1/18.
//  Copyright © 2018 Matthew Riley. All rights reserved.
//

import Foundation


// This is the class that represents our Tasks that will be used in our TaskManager class
class Task {
    // This creates a String variable called title for each Task
    var title: String
    
    // This creates a String variable called taskDetails for each Task
    var taskDetails: String
    
    // This creates a Bool variable called notCompleted for each Task (Setting this to true below, since whenever we create a new Task we're going to assume it has not been completed yet.)
    var notCompleted: Bool
    
    // This creates a optional variable called completeByDate for each Task (It is an optional because not all tasks will have a complete by date)
    var completeByDate: Date? = nil
    
    // Since notCompleted is given a value below & completeByDate is an optional, the only ones that need to be initialized are title & taskDetails
    init(title: String, taskDetails: String) {
        self.title = title
        self.taskDetails = taskDetails
        self.notCompleted = true
    }    
}
