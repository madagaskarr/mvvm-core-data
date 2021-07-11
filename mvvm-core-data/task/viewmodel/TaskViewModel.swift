//
//  TaskViewModel.swift
//  mvvm-core-data
//
//  Created by Tigran Ghazinyan on 7/10/21.
//

import Foundation
import Combine
import CoreData

class TaskViewModel: TaskRepository {
    
    lazy var coreDataStack = CoreDataStack(modelName: Constants.CORE_DATA_STACK)
    
    
    func getAllTasks(){
        
        let taskFetch: NSFetchRequest<TaskEntity> = TaskEntity.fetchRequest()
        
        do {
            let results = try coreDataStack.managedContext.fetch(taskFetch)
            
            if (!results.isEmpty) {
                let tasks: [TaskEntity] = results
                
                for task in tasks {
                    print(task.id)
                    print(task.title)
                }
            }
            


        } catch let error as NSError {
            print("Fetch error: \(error) description: \(error.userInfo)")
        }
        
        
    }
    
    func addNewTask(tasl: TaskModel) {
        
    }
    
    
    
    
}
