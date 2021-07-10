//
//  TaskEntity+CoreDataProperties.swift
//  mvvm-core-data
//
//  Created by Tigran Ghazinyan on 7/10/21.
//
//

import Foundation
import CoreData


extension TaskEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TaskEntity> {
        return NSFetchRequest<TaskEntity>(entityName: "TaskEntity")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var title: String?
    @NSManaged public var completed: Bool
    @NSManaged public var user: UserEntity?

}

extension TaskEntity : Identifiable {

}
