//
//  MainBottomTabView.swift
//  LiuBe-TallyBook
//
//  Created by 刘不易 on 2024/7/14.
//

import SwiftUI
import SwiftData

struct MainBottomTabView: View {
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            // 主页
            HomePageView()
                .tabItem {
                    Image(systemName: "house").imageScale(.large)
                    Text("主页")
                }.tag(1)
             
            // 账单页🧾
            BillPage()
                .tabItem {
                    Image(systemName: "book.pages").imageScale(.large)
                    Text("账单")
                }.tag(2)
            
            // 存钱页
            DepositPageView()
                .tabItem {
                    Image(systemName: "centsign.circle").imageScale(.large)
                    Text("存钱")
                }
                .tag(3)
            
            // 个人信息页👤
            MyView()
                .tabItem {
                    Image(systemName: "person").imageScale(.large)
                    Text("个人信息")
                }.tag(4)
        }
    }
}

#Preview {
    MainBottomTabView()
}
