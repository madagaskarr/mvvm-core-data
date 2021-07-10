//
//  AddTaskViewController.swift
//  mvvm-core-data
//
//  Created by Tigran Ghazinyan on 7/10/21.
//

import UIKit

class AddTaskViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func addTaskWasTaped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
