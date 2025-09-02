//
//  ContentView.swift
//  card_youtube
//
//  Created by COTEMIG on 02/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            CardCompleto(banner: Image("Felca"), avatar: Image("FelcaAvatar"), titulo: "Base da Virgínia", usuario: "Felca", seguidores: "8M", publicacao: "20/8/2024")
            CardCompleto(banner: Image("FelcaAdult"), avatar: Image("FelcaAvatar"), titulo: "Adultização", usuario: "Felca", seguidores: "8M", publicacao: "20/8/2025")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
