//
//  TaskDetailsViewController.swift
//  TaskManageriOS
//
//  Created by Matthew Riley on 11/2/18.
//  Copyright © 2018 Matthew Riley. All rights reserved.
//

import UIKit

class TaskDetailsViewController: UIViewController {
    
    @IBOutlet weak var taskTitleLabel: UILabel!
    @IBOutlet weak var taskDetailsLabel: UILabel!
    
    
    var task: Task!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskTitleLabel.text = task.title
        taskDetailsLabel.text = task.taskDetails

        // Do any additional setup after loading the view.
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
