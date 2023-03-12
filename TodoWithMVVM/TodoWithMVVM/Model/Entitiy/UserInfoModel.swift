//
//  UserInfo.swift
//  TodoWithMVVM
//
//  Created by calmkeen on 2023/03/02.
//

import Foundation

class UserInfoModel {
    
    var userName: String
    var achieveRate: Float
    var age: Int
    var gender: GenderType
    var secretKey: Bool = false
    
    enum GenderType: String {
        case male = "male"
        case female = "female"
    }
    
    init(userName: String, achieveRate: Float, age: Int, gender: GenderType, secretKey: Bool) {
        self.userName = userName
        self.achieveRate = achieveRate
        self.age = age
        self.gender = gender
        self.secretKey = secretKey
    }
}

