//
//  TodoListModel.swift
//  TodoWithMVVM
//
//  Created by calmkeen on 2023/03/02.
//

import Foundation

class TodoListModel {
    var title: String
    var checkDo: Bool
    
    init(title: String, checkDo: Bool) {
        self.title = title
        self.checkDo = checkDo
    }
}
