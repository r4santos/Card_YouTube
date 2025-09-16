//
//  ContentView.swift
//  card_youtube
//
//  Created by COTEMIG on 02/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    TabItemView(icon: "house", name: "Home")
                }
            Shorts()
                .tabItem {
                    TabItemView(icon: "play", name: "Shorts")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
