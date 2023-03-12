//
//  TodoListModel.swift
//  TodoWithMVVM
//
//  Created by calmkeen on 2023/03/02.
//

import Foundation

class TodoListModel {
    var title: String
    var check: Bool
    
    init(title: String, check: Bool) {
        self.title = title
        self.check = check
    }
}
