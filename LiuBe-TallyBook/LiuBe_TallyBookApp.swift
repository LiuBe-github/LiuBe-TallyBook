//
//  LiuBe_TallyBookApp.swift
//  LiuBe-TallyBook
//
//  Created by 刘不易 on 2024/7/14.
//

import SwiftUI
import SwiftData

/**
 @description: App主程序
 
 @date: 2024/7/14
 @time: 11:26
 */
@main
struct LiuBe_TallyBookApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
            HelloWorld()
            MainBottomTabView()
        }
        .modelContainer(sharedModelContainer)
    }
}

