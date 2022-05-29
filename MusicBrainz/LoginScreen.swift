//
//  LoginScreen.swift
//  MusicBrainz
//
//  Created by Akshat Tiwari on 21/01/22.
//

import SwiftUI
import AuthenticationServices

struct LoginScreen: View {
    @AppStorage("onboarded") var hasOnboarded = false
    @State var selectedPage = 0

    init() {
       UIPageControl.appearance().currentPageIndicatorTintColor = .red
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.white.withAlphaComponent(0.8)
    }
    

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
                
                ZStack{
                    Button(action: {
                        self.hasOnboarded = true
                    }) {
                        Text("I am ready!")
                            .padding(10.0)
                            .accentColor(.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10.0)
                                    .stroke(lineWidth: 2.0)
                                    .shadow(color: .blue, radius: 10.0)
                            )
                    }
                    .padding(60.0)
                }
            }
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
