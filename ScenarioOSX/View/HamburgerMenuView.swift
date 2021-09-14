//
//  HamburgerMenuView.swift
//  ScenarioOSX
//
//  Created by 下里浩昇 on 2021/09/14.
//

import SwiftUI
import UIKit

struct HamburgerMenuView: View {
//    @State private var offset = CGFload.zero
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {

                NavigationView{
                    ZStack {
                        VStack() {
                            
                        }
                    }
                    .navigationBarTitle("ScenarioApp", displayMode: .inline)
                    .navigationBarItems(leading: Button(action: {
                            
                    }){
                        Image(systemName: "list.bullet")
                    })
                }
            }
        }
    }
}

struct HamburgerMenuView_Previews: PreviewProvider {
    static var previews: some View {
        HamburgerMenuView()
    }
}
