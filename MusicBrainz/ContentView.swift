//
//  ContentView.swift
//  MusicBrainz
//
//  Created by Akshat Tiwari on 18/01/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    @AppStorage("loginStatus") var isLoggedIn = false

    var body: some View {
        if isLoggedIn {
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
