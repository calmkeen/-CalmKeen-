//
//  CreateTodoListModel.swift
//  SeoulParkingPlace
//
//  Created by calmkeen on 2023/01/23.
//

import Foundation
import UIKit

class CreateTodoListModel {
    
    
    var title: String
    var subTitle: String
    var Color: UIColor
    var sfIcon: String
    var save: Bool = false
    var cancel: Bool = true
    
    init(title: String, subTitle: String, Color: UIColor, sfIcon: String, save: Bool, cancel: Bool) {
        self.title = title
        self.subTitle = subTitle
        self.Color = Color
        self.sfIcon = sfIcon
        self.save = save
        self.cancel = cancel
    }
}
