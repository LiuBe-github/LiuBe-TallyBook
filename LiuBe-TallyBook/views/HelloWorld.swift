//
//  HelloWorld.swift
//  LiuBe-TallyBook
//
//  Created by 刘不易 on 2024/7/14.
//

import SwiftUI
import SwiftData

struct HelloWorld: View {
    var body: some View {
        Text("HelloWorld")
        Text(Constants.SYSTEM_CONSTANT_TEST)
    }
}

#Preview {
    HelloWorld()
        .modelContainer(for: Item.self, inMemory: true)
}
