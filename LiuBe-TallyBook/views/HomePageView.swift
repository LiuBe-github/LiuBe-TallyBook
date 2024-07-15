//
//  PositionView.swift
//  LiuBe-TallyBook
//
//  Created by 刘不易 on 2024/7/14.
//


import SwiftUI

struct HomePageView: View {
    
    @State var showProfile = false
    @State var currentMonth: Int = 0
    @State var tallies: [Tally] = [
        // 示例账单数据
        Tally(id: UUID(), type: 1, isOutcomeOrIncome: 0, amount: 90009, detail: "123", date: Date(), createTime: Date(), updateTime: Date(), createUser: 1, updateUser: 1),
        Tally(id: UUID(), type: 2, isOutcomeOrIncome: 1, amount: 29, detail: "123", date: Date(), createTime: Date(), updateTime: Date(), createUser: 1, updateUser: 1),
        Tally(id: UUID(), type: 2, isOutcomeOrIncome: 1, amount: 29, detail: "123", date: Date(), createTime: Date(), updateTime: Date(), createUser: 1, updateUser: 1),
        Tally(id: UUID(), type: 2, isOutcomeOrIncome: 1, amount: 29, detail: "123", date: Date(), createTime: Date(), updateTime: Date(), createUser: 1, updateUser: 1),
        Tally(id: UUID(), type: 2, isOutcomeOrIncome: 1, amount: 29, detail: "123", date: Date(), createTime: Date(), updateTime: Date(), createUser: 1, updateUser: 1),
        Tally(id: UUID(), type: 2, isOutcomeOrIncome: 1, amount: 29, detail: "123", date: Date(), createTime: Date(), updateTime: Date(), createUser: 1, updateUser: 1),
        Tally(id: UUID(), type: 2, isOutcomeOrIncome: 1, amount: 29, detail: "123", date: Date(), createTime: Date(), updateTime: Date(), createUser: 1, updateUser: 1),
        Tally(id: UUID(), type: 2, isOutcomeOrIncome: 1, amount: 29, detail: "123", date: Date(), createTime: Date(), updateTime: Date(), createUser: 1, updateUser: 1),
        Tally(id: UUID(), type: 2, isOutcomeOrIncome: 1, amount: 29, detail: "123", date: Date(), createTime: Date(), updateTime: Date(), createUser: 1, updateUser: 1),
        Tally(id: UUID(), type: 2, isOutcomeOrIncome: 1, amount: 29, detail: "123", date: Date(), createTime: Date(), updateTime: Date(), createUser: 1, updateUser: 1),
        Tally(id: UUID(), type: 2, isOutcomeOrIncome: 1, amount: 29, detail: "123", date: Date(), createTime: Date(), updateTime: Date(), createUser: 1, updateUser: 1),
        
        // 添加更多账单...
    ]
    
    // TODO: 这个要重新封装
    struct TalliesDataView: View {
        var tally: Tally
        
        var body: some View {
            NavigationView {
                VStack {
                    Text("详情")
                        .font(.title)
                    Text(tally.detail ?? "没有详细信息")
                }
                .navigationBarTitle("详情", displayMode: .inline)
            }
        }
        
    }
    
    var body: some View {
        // 整个页面都是可跳转的
        NavigationView {
        // 总布局
            VStack {
                // 顶部主页和头像
                HStack {
                    Text("主页")
                        .font(.system(size: 28))
                        .bold()
                    Spacer()
                    Button(action: {
                        showProfile.toggle()
                    }){
                        // TODO: 头像地址要从用户表里动态取，自己用的写死也无妨
                        Image("Avatar")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 36, height: 36)
                            .clipShape(Circle())
                    }
                }
                .padding(.horizontal)
                Spacer()
                
                // 收支视图
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("收支视图")
                                .font(.system(size: 25))
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Image(systemName: "apple.logo")
                            .foregroundColor(.white)
                            .font(.system(size: 45))
                    }
                    .padding(.horizontal, 70)
                    .padding(.top, 20)
                    
                    HStack {
                        Text("本月结余")
                            .font(.system(size: 25))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Spacer()
                        // TODO: 这里的金额需要计算，是正数就是“+”，是负数就是“-”
                        Text("- ¥ \(tallies[0].amount, specifier: "%.2f")")
                            .font(.system(size: 35))
                            .foregroundColor(.yellow)
                    }
                    .padding(.horizontal, 20)
                    Spacer()
                    
                    // TODO: 此处两个进度条需要动态计算，具体算法未知，并且收入和支出要动态取
                    HStack {
                        Text("本月支出")
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                        ProgressView(value: 0.75)
                            .progressViewStyle(LinearProgressViewStyle(tint: Color.red))
                            .shadow(color: Color(red: 0, green: 0, blue: 0.6),
                                    radius: 4.0, x: 1.0, y: 2.0)
                        Text("¥ \(tallies[0].amount, specifier: "%.2f")")
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, -35)
                    Spacer()
                    
                    HStack {
                        Text("本月收入")
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                        ProgressView(value: 0.15)
                            .progressViewStyle(LinearProgressViewStyle(tint: Color.green))
                            .shadow(color: Color(red: 0, green: 0, blue: 0.6),
                                    radius: 4.0, x: 1.0, y: 2.0)
                        Text("¥ \(tallies[1].amount, specifier: "%.2f")")
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, -60)
                }
                .frame(width: 370, height: 220)
                .background(.black)
                .cornerRadius(20)
                .shadow(radius: 20)
                .padding(.horizontal)
                .padding(.top, -495)
                
                // 收支记录
                VStack {
                    HStack {
                        Text("收支记录")
                            .font(.system(size: 25))
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            
                        Spacer()
                        
                        // 新增账单按钮
                        Button(action: {
                            // TODO: 这里的逻辑是将来点击之后，要跳转到另一个界面新建账单
                            
                        }){
                            // TODO: 头像地址要从用户表里动态取，自己用的写死也无妨
                            Image(systemName: "plus")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 25, height: 25)
                                .clipShape(Circle())
                                .foregroundColor(Color.cyan)
                        }
                        .padding(.horizontal, 4)
                    }
                    .frame(width: 370, height: 10)
                    .padding(.horizontal, 110)
                    .padding(.top, -220)
                    
                    // 具体账单
                        
                    // Section里包着NavigateLink
                    ScrollView(.vertical, showsIndicators: true) {
                        // TODO: 这里需要一个ForEach，找这个月里不同的天。
                            
                        ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                            Section {
                                ExpenseRecordView()
                                    .frame(width: 400, height: 700)
                            }
                            .padding(.horizontal, 20)
                            .padding(.top, -120)
                        }
                        .padding(.bottom, 19)
                    }
                    .frame(height: 470)
                    .padding(.top, -200)
                }
                .frame(width:420, height: 200)
                .padding(.horizontal)
                .padding(.top)
                
                // 点击头像后要弹出的菜单内容
                /**
                 MenuView()
                    .offset(y: showProfile ? 0 : 600)
                    .animation(.spring(response: 0.5, dampingFraction: 0.6), value: showProfile)
                 */
            }
            .frame(width: 400, height: 770)
        }
    }
    
    // 方法区
    private func getCurrentMonth() {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.month], from: Date())
        if let month = components.month {
            currentMonth = month
        }
    }
    
    private func deleteTallies() {
        
    }
}

#Preview {
    HomePageView()
}
