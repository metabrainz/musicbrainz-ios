//
//  LoginScreen.swift
//  MusicBrainz
//
//  Created by Akshat Tiwari on 21/01/22.
//

import SwiftUI

struct OnboardingScreen: View {

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
                    ForEach(0..<onboardingData.count){
                        index in CardView(card : onboardingData[index]).tag(index)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                }.offset(x: 0, y: 20)
            }
        }
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
