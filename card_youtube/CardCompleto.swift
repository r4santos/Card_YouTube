//
//  CardCompleto.swift
//  card_youtube
//
//  Created by COTEMIG on 02/09/25.
//

import SwiftUI

struct CardCompleto: View {
    
    let banner: Image
    let avatar: Image
    let titulo: String
    let usuario: String
    let seguidores: String
    let publicacao: String

    var body: some View {
        VStack {
            banner.resizable().scaledToFit()
            HStack{
                avatar.resizable().frame(width: 80, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 100))
                VStack(alignment: .leading){
                    Text(titulo)
                    HStack{
                        Text(usuario)
                        Text(seguidores)
                        Text(publicacao)
                    }
                }
            }
        }
        .padding()
    }
}

struct CardCompleto_Previews: PreviewProvider {
    static var previews: some View {
        CardCompleto(banner: Image("Felca"), avatar: Image("FelcaAvatar"), titulo: "Base da Virgínia", usuario: "Felca", seguidores: "8M", publicacao: "20/8/2024")
    }
}
