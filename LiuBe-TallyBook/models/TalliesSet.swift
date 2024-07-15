//
//  TalliesSet.swift
//  LiuBe-TallyBook
//
//  Created by 刘不易 on 2024/7/15.
//

import SwiftUI

struct TalliesSet: Identifiable, Equatable {
    
    let id: UUID
    
    let createTime: Date
    
    let tallies: [Tally]
    
}
