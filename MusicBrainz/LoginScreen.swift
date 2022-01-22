//
//  LoginScreen.swift
//  DTU RM
//
//  Created by Akshat Tiwari on 21/01/22.
//

import SwiftUI
import AuthenticationServices

struct LoginScreen: View {

    init() {
       UIPageControl.appearance().currentPageIndicatorTintColor = .red
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.white.withAlphaComponent(0.8)
    }
    
    @State var selectedPage = 0

    var body: some View {
        // Main Stack
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                ZStack{
                TabView(selection: $selectedPage)
                {
                    ForEach(0..<testData.count){
                        index in CardView(card : testData[index]).tag(index)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                }.offset(x: 0, y: 20)
            }
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
