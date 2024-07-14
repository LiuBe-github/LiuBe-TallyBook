//
//  Item.swift
//  LiuBe-TallyBook
//
//  Created by 刘不易 on 2024/7/14.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
