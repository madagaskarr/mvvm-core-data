//
//  AddTaskViewController.swift
//  mvvm-core-data
//
//  Created by Tigran Ghazinyan on 7/10/21.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    lazy var coreDataStack = CoreDataStack(modelName: Constants.CORE_DATA_STACK)

    @IBOutlet weak var taskTitleEditText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func addTaskWasTaped(_ sender: UIButton) {
        
        let task = TaskEntity(context: coreDataStack.managedContext)
        task.title = taskTitleEditText.text
        task.completed = false
        coreDataStack.saveContext()
        navigationController?.popViewController(animated: true)
    }
}
