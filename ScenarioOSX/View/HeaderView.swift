//
//  HeaderView.swift
//  ScenarioOSX
//
//  Created by 下里浩昇 on 2021/09/15.
//

import SwiftUI

struct HeaderView: View {
    @Binding var offset: CGFloat
    @Binding var openOffset: CGFloat
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    if (self.offset != CGFloat.zero) {
                        self.offset = CGFloat.zero
                    } else {
                        self.offset = self.openOffset
                    }
                    
                }, label: {
                    Image(systemName: "list.bullet")
                    
                })
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

//struct HeaderView_Previews: PreviewProvider {
//
//    @State private var offset = CGFloat.zero
//    @State private var closeOffset = CGFloat.zero
//    @State private var openOffset = CGFloat.zero
//
//    static var previews: some View {
////        HeaderView()
//    }
//}
