//
//  SideMenuView.swift
//  ScenarioOSX
//
//  Created by 下里浩昇 on 2021/09/14.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
                    Image("Yorushika_Logo")
                        .resizable()
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 1))
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    Text("SwiftUIへの道")
                        .font(.largeTitle)
                    Text("@road2swiftui")
                        .font(.caption)
                    Divider()
                    ScrollView (.vertical, showsIndicators: true) {
                        HStack {
                            Image(systemName: "person")
                            Text("Profile")
                        }
                        HStack {
                            Image(systemName: "list.dash")
                            Text("Lists")
                        }
                        HStack {
                            Image(systemName: "text.bubble")
                            Text("Topics")
                        }
                    }
                    Divider()
                    Text("Settings and privacy")
                }
                .padding(.horizontal, 20)
            }
    }


struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
