//
//  AddNewTaskViewController.swift
//  TaskManageriOS
//
//  Created by Matthew Riley on 11/1/18.
//  Copyright © 2018 Matthew Riley. All rights reserved.
//

import UIKit

class AddNewTaskViewController: UIViewController {
    
    @IBOutlet weak var taskTitleTextField: UITextField!
    @IBOutlet weak var taskDetailsTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    func showErrorAlert() {
        let alertController = UIAlertController(title: "Error", message: "You must enter a title and details for the task", preferredStyle: .actionSheet)
        let closeAction = UIAlertAction(title: "Close", style: .default) { _ in
            self.taskTitleTextField.text = ""
            self.taskDetailsTextField.text = ""
        }
        alertController.addAction(closeAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        guard let title = taskTitleTextField.text, title.trimmingCharacters(in: .whitespacesAndNewlines) != "",
            let taskDetails = taskDetailsTextField.text, taskDetails.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
                showErrorAlert()
                return
        }
        
        let newTask = Task(title: title, taskDetails: taskDetails)
        
        TaskManager.sharedInstance.addTask(task: newTask)
        
        self.performSegue(withIdentifier: "unwindToTaskListWithSegue", sender: self)
    }
    //ADD COMMENTS TO ENTIRE PROJECT!!!
}









