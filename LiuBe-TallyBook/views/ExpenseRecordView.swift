//
//  ExpenseRecordView.swift
//  LiuBe-TallyBook
//
//  Created by 刘不易 on 2024/7/15.
//

import SwiftUI

struct ExpenseRecordView: View {
    
    @State var tallies: [Tally] = [
        // 示例账单数据
        Tally(id: UUID(), type: 1, isOutcomeOrIncome: 0, amount: 90009, detail: "123", date: Date(), createTime: Date(), updateTime: Date(), createUser: 1, updateUser: 1),
        Tally(id: UUID(), type: 2, isOutcomeOrIncome: 1, amount: 29, detail: "123", date: Date(), createTime: Date(), updateTime: Date(), createUser: 1, updateUser: 1),
        Tally(id: UUID(), type: 2, isOutcomeOrIncome: 1, amount: 29, detail: "123", date: Date(), createTime: Date(), updateTime: Date(), createUser: 1, updateUser: 1),
        Tally(id: UUID(), type: 2, isOutcomeOrIncome: 1, amount: 29, detail: "123", date: Date(), createTime: Date(), updateTime: Date(), createUser: 1, updateUser: 1),
        Tally(id: UUID(), type: 2, isOutcomeOrIncome: 1, amount: 29, detail: "123", date: Date(), createTime: Date(), updateTime: Date(), createUser: 1, updateUser: 1),
        Tally(id: UUID(), type: 2, isOutcomeOrIncome: 1, amount: 29, detail: "123", date: Date(), createTime: Date(), updateTime: Date(), createUser: 1, updateUser: 1),
        Tally(id: UUID(), type: 2, isOutcomeOrIncome: 1, amount: 29, detail: "123", date: Date(), createTime: Date(), updateTime: Date(), createUser: 1, updateUser: 1),
        
        // 添加更多账单...
    ]
    
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
        NavigationView {
            // 收支视图
            VStack {
                HStack {
                    Text("7月14日")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Text("结余：- ¥ 200.00")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                .padding(.horizontal)
                .padding(.top)
                
                Spacer()
                
                ForEach(tallies) { tally in
                    if (tallies.isEmpty) {
                        Text("这一天还没有账单哦")
                            .font(.system(size:30))
                    } else {
                        NavigationLink(destination: TalliesDataView(tally: tally)) {
                            HStack {
                                Text(tally.date, style: .date)
                                    .font(.system(size: 20))
                                    .padding(.horizontal, 15)
                                
                                Spacer()
                                
                                Text("- ¥ \(tally.amount, specifier: "%.2f")")
                                    .font(.headline)
                                    .padding(.horizontal, 15)
                            }
                        }
                        Spacer()
                        Divider()
                    }
                }
                .padding(.top, 8)
                .frame(width: 370, height: 6)
                
            }
            // 高度按照账单数量去计算
            .frame(width: 370, height: 44 + Double(tallies.count) * 44)
            .background(.yellow)
            .cornerRadius(20)
            .shadow(radius: 20)
            .padding(.horizontal)
            .padding(.top, -50)
        }
    }
}

#Preview {
    ExpenseRecordView()
}
