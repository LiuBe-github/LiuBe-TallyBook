//
//  MeneView.swift
//  LiuBe-TallyBook
//
//  Created by 刘不易 on 2024/7/14.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 16) {
                Text("本年已经攒了100元")
                Color.white
                    .frame(width: 30, height: 6)
                    .cornerRadius(3.0)
                    .frame(width: 130, height: 6, alignment: .leading)
                    .background(Color(#colorLiteral(red: 1, green: 0.8984361291, blue: 0.8663505316, alpha: 0.08)))
                    .cornerRadius(3)
                    .frame(width: 150, height: 24)
                    .background(.black.opacity(0.5))
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
                MenuRow(title: "Account", icon: "gear")
                MenuRow(title: "Billing", icon: "creditcard")
                MenuRow(title: "Account", icon: "person.crop.circle")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.833670236, green: 0.968627451, blue: 1, alpha: 1))]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(radius: 30)
            .padding(.horizontal, 30)
            .overlay {
                Image("Avatar")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .offset(y: -150)
            }
        }
        .padding(.bottom, 30)
    }
}

#Preview {
    MenuView()
}

struct MenuRow: View {
    var title: String
    var icon: String
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light))
                .imageScale(.large)
                .frame(width: 16, height: 16)
                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
            Text(title)
                .font(.system(size: 20, weight: .bold))
                .frame(width: 120, alignment: .leading)
        }
    }
}
