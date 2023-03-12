//
//  TodoContentModel.swift
//  TodoWithMVVM
//
//  Created by calmkeen on 2023/03/02.
//

import Foundation

class TodoContentModel: Codable {
    var title: String = ""
    var detail: String?
    var CreateDate: Date
    var recycle: Bool
    
}
