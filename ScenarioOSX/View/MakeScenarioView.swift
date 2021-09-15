//
//  MakeScenarioView.swift
//  ScenarioOSX
//
//  Created by 下里浩昇 on 2021/09/14.
//

import SwiftUI

struct MakeScenarioView: View {
    
    var body: some View {
        VStack {
            HeaderView()
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
            
        }
    }
}

struct MakeScenarioView_Previews: PreviewProvider {
    static var previews: some View {
        MakeScenarioView()
    }
}
