//
//  Tally.swift
//  LiuBe-TallyBook
//
//  Created by 刘不易 on 2024/7/14.
//

import SwiftUI

/**
 @description: 账单实体
 
 @date: 2024/7/14
 @time: 11:39
 */
struct Tally: Identifiable, Equatable {
    // 主键ID
    var id: UUID
    
    // 外键，标记消费类型
    var type: Int
    
    // 收入还是支出
    var isOutcomeOrIncome: Int8
    
    // 金额
    var amount: Double
    
    // 详细信息
    var detail: String?
    
    // 日期
    var date: Date
    
    // 创建时间
    var createTime: Date
    
    // 更新时间
    var updateTime: Date
    
    // 创建时间
    var createUser: Int64
    
    // 更新时间
    var updateUser: Int64
    
    static func == (lhs: Tally, rhs: Tally) -> Bool {
        return lhs.id == rhs.id
    }
    
}
