//
//  HeaderView.swift
//  ScenarioOSX
//
//  Created by 下里浩昇 on 2021/09/15.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "list.bullet")
                Spacer()
                Text("ScenarioApp")
                    .font(.title)
//                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                    .padding(5)
                Spacer()
            }
        }
        .padding(.horizontal)
        .background(Color(red: (236/255), green: (244/255), blue: (217/255)))
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
