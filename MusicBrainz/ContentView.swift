//
//  ContentView.swift
//  MusicBrainz
//
//  Created by Akshat Tiwari on 18/01/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    @AppStorage("onboarded") var hasOnboarded = false

    var body: some View {
        if hasOnboarded {
            NavigationView {
                
            }
        }
        else{
            LoginScreen()
        }
       
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
