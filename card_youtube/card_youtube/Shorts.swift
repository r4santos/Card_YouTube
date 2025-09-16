//
//  Shorts.swift
//  card_youtube
//
//  Created by COTEMIG on 16/09/25.
//

import SwiftUI

import SwiftUI

struct Shorts: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("BapiRomet")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                Color.black.opacity(0.3)
                    .ignoresSafeArea()
                
                VStack {
                    HStack {
                        Spacer()
                        
                        NavigationLink(destination: ChannelInfoView()) {
                            Image("channelIcon")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 1))
                                .shadow(radius: 3)
                                .padding(.trailing, 50)
                        }
                    }
                    .padding(.top, 50)
                    
                    Spacer()
                    
                    HStack(alignment: .bottom) {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("@BapiRomet")
                                .font(.headline)
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                            
                            Text("Título do vídeo de Shorts")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                        }
                        .padding(.leading, 24)
                        .padding(.bottom, 32)
                        
                        Spacer()
                        
                        VStack(spacing: 32) {
                            Button(action: {
                                print("Curtir")
                            }) {
                                VStack {
                                    Image(systemName: "heart.fill")
                                        .font(.title)
                                        .foregroundColor(.white)
                                    Text("1.2K")
                                        .foregroundColor(.white)
                                        .font(.caption)
                                }
                            }
                            
                            Button(action: {
                                print("Comentar")
                            }) {
                                VStack {
                                    Image(systemName: "bubble.right.fill")
                                        .font(.title)
                                        .foregroundColor(.white)
                                    Text("300")
                                        .foregroundColor(.white)
                                        .font(.caption)
                                }
                            }
                            
                            Button(action: {
                                print("Compartilhar")
                            }) {
                                Image(systemName: "arrowshape.turn.up.right.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                            }
                        }
                        .padding(.trailing, 24)
                        .padding(.bottom, 32)
                    }
                    .padding(.horizontal, 16)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ChannelInfoView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("channelIcon")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .shadow(radius: 5)
            
            Text("BapiRomet")
                .font(.largeTitle)
                .bold()
            
            Text("Canal do bapi romet")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
        }
        .padding()
        .navigationTitle("Sobre o Canal")
    }
}



struct Shorts_Previews: PreviewProvider {
    static var previews: some View {
        Shorts()
    }
}
