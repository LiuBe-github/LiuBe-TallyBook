//
//  User.swift
//  LiuBe-TallyBook
//
//  Created by 刘不易 on 2024/7/14.
//

import Foundation
import SwiftUI
import SwiftData

/**
 @description: 用户实体
 
 @date: 2024/7/14
 @time: 11:39
 */
@Model
final class User: Identifiable {
    // 主键ID
    var id: UUID
    
    // 用户名
    var username: String
    
    // 头像地址
    var avatarUrl: String
    
    // 密码
    var password: String
    
    // 姓名
    var name: String
    
    // 性别
    var gender: Int8
    
    // 创建时间
    var createTime: Date
    
    // 更新时间
    var updateTime: Date
    
    // 创建时间
    var createUser: Int64
    
    // 更新时间
    var updateUser: Int64
    
    init(id: UUID, username: String, avatarUrl: String, password: String, name: String, gender: Int8, createTime: Date, updateTime: Date, createUser: Int64, updateUser: Int64) {
        self.id = id
        self.username = username
        self.avatarUrl = avatarUrl
        self.password = password
        self.name = name
        self.gender = gender
        self.createTime = createTime
        self.updateTime = updateTime
        self.createUser = createUser
        self.updateUser = updateUser
    }
}
