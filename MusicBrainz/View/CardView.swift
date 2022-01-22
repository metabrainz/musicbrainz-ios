//
//  CardView.swift
//  DTU RM
//
//  Created by Akshat Tiwari on 22/01/22.
//

import SwiftUI

struct CardView: View {
    
    var card : Card
    var body: some View {
        VStack{
            LottieView(filename: card.file)
                .frame(width: 400, height: 400)
            
            Text(card.title)
                .font(.system(size: 40))
                .fontWeight(.bold)
                .foregroundColor(.white)
               
            
            Text(.init(card.description))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .font(.system(size: 22))
                .foregroundColor(.white)
                .frame(width: 335, height: 100)
                .padding(5)
        
        }.padding()
            .offset(x: 0, y: 0)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: testData[1])
    }
}

