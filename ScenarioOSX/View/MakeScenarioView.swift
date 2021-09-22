//
//  MakeScenarioView.swift
//  ScenarioOSX
//
//  Created by 下里浩昇 on 2021/09/14.
//

import SwiftUI

struct MakeScenarioView: View {
    @State private var offset = CGFloat.zero
    @State private var closeOffset = CGFloat.zero
    @State private var openOffset = CGFloat.zero
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
//
                HeaderView(offset: $offset, openOffset: $openOffset, closeOffset: $closeOffset)
//                HeaderView()
//                Spacer()
                ZStack (alignment: .leading){
//
//                    HeaderView()
                    NavigationView {
                        ScrollView(.vertical, showsIndicators: true)
                        {
                            VStack(spacing: 10)
                            {
                                ForEach(0 ..< 5) {item in
                                    GeometryReader { geometry in
                                        VStack
                                        {
                                            Text("item")
                                                .foregroundColor(Color.white)
                                        }
                                        .frame(width: 300, height: 200)
                                        .background(Color.gray)
                                    }
                                    .frame(width: 300, height: 200)
                                }
                            }
                        }
                    }
                    .background(Color.white)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                    Color.gray.opacity(Double((self.closeOffset - self.offset)/self.closeOffset) - 0.4
                    )
                    
                    SideMenuView()
                        .background(Color.white)
                        .frame(width: geometry.size.width * 0.7)
                        .edgesIgnoringSafeArea(.bottom)
                        .onAppear(perform: {
                            self.offset = geometry.size.width * -1
                            self.closeOffset = self.offset
                            self.openOffset = .zero
                        })
                        .offset(x: self.offset)
                        .animation(.default)
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
                
            }
            
        }
    }
}

struct MakeScenarioView_Previews: PreviewProvider {
    static var previews: some View {
        MakeScenarioView()
    }
}
