//
//  ContentView.swift
//  LiuBe-TallyBook
//
//  Created by 刘不易 on 2024/7/14.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    // 放置布局
    var body: some View {
        // 底部导航栏
        MainBottomTabView()
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
