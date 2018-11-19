//
//  TaskListViewController.swift
//  TaskManageriOS
//
//  Created by Matthew Riley on 11/1/18.
//  Copyright © 2018 Matthew Riley. All rights reserved.
//

import UIKit

class TaskListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var taskListTableView: UITableView!
    
    
    var currentTask: Task!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? TaskDetailsViewController {
            destination.task = currentTask
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TaskManager.sharedInstance.getTaskCount()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        currentTask = TaskManager.sharedInstance.getTask(at: indexPath.row)
        self.performSegue(withIdentifier: "showTaskDetails", sender: self)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell") as! TaskTableViewCell
        
        let currentTask = TaskManager.sharedInstance.getTask(at: indexPath.row)
        
        cell.titleLabel.text = currentTask.title
        
        if currentTask.notCompleted {
            cell.statusView.backgroundColor = UIColor.green
        } else {
            cell.statusView.backgroundColor = UIColor.red
        }
        
        if let completeByDate = currentTask.completeByDate {
            cell.completeByDateLabel.text = formatDate(completeByDate)
        } else {
            cell.completeByDateLabel.text = ""
        }
        return cell
    }
}














