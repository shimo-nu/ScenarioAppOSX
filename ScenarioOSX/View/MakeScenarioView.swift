//
//  MakeScenarioView.swift
//  ScenarioOSX
//
//  Created by 下里浩昇 on 2021/09/23.
//

import SwiftUI

struct MakeScenarioView: View {
    
    @State private var offset = CGFloat.zero
    @State private var closeOffset = CGFloat.zero
    @State private var openOffset = CGFloat.zero
    var body: some View {
        
        GeometryReader { geometry in
            VStack{
                HeaderView(offset: $offset, openOffset: $openOffset, closeOffset: $closeOffset)
                ZStack(alignment: .leading)
                {
                    
                    Text("ここに書く")
                    Color.gray.opacity(Double((self.closeOffset - self.offset)/self.closeOffset) - 0.4
                    )
           
                }
                Divider()
                HStack {
                    
                    ScrollView(.horizontal, showsIndicators: true)
                    {
                        HStack(spacing: 10) {
                            
                            Spacer()
                            Image("erma")
                                .resizable()
                                .overlay(
                                    Circle().stroke(Color.gray, lineWidth: 1)
                                )
                                .frame(width: 30, height: 30)
                                .clipShape(Circle())
                            Text("エルマ")
                            Spacer()
                            Image("amy")
                                .resizable()
                                .overlay(
                                    Circle().stroke(Color.gray, lineWidth: 1)
                                )
                                .frame(width: 30, height: 30)
                                .clipShape(Circle())
                            Text("エイミー")
                            
                            
                        }
                        
                    }
                    Image("plus")
                        .resizable()
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 1)
                        )
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                }
            }
        }
    }
     
}
//                .gesture(DragGesture(minimumDistance: 5)
//                            .onChanged{ value in
//                                if (self.offset < self.openOffset) {
//                                    self.offset = self.closeOffset + value.translation.width
//                                }
//                            }
//                            .onEnded { value in
//                                if (value.location.x > value.startLocation.x) {
//                                    self.offset = self.openOffset
//                                } else {
//                                    self.offset = self.closeOffset
//                                }
//                            }
//                )
                


struct MakeScenarioView_Previews: PreviewProvider {
    static var previews: some View {
        MakeScenarioView()
    }
}
