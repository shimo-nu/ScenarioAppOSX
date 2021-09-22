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
    @Binding var closeOffset: CGFloat
    var body: some View {
        HStack {
            Button(action: {
                if (self.offset != self.openOffset) {
                    self.offset = CGFloat.zero
                } else {
                    self.offset = self.closeOffset
                }
                
            }, label: {
                Image(systemName: "list.bullet")
                
            })
            Spacer()
            Text("ScenarioApp")
                .font(.title)
                .fontWeight(.light)
                    .padding(5)
            Spacer()
        }
        .background(Color(red: (236/255), green: (244/255), blue: (217/255)))
        .edgesIgnoringSafeArea(.vertical)
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
