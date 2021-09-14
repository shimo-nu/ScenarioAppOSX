//
//  HeaderView.swift
//  ScenarioOSX
//
//  Created by 下里浩昇 on 2021/09/14.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack{
                    
                    Text("ScenarioApp")
                }
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
