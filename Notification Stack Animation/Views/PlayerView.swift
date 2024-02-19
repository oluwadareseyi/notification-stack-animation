//
//  PlayerView.swift
//  Notification Stack Animation
//
//  Created by Oluwaseyi Oluwadare on 18/02/2024.
//

import SwiftUI
import AVKit

var videoURL1: URL = URL(filePath: Bundle.main.path(forResource: "Lana", ofType: "mp4") ?? "")

var video = AVPlayer(url: videoURL1)

struct PlayerView: View {
    var body: some View {
        ZStack {
            VideoPlayerView()
                .scaleEffect(1.3)
            
            ZStack{
                VStack {}
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.opacity(0.5))
                VStack {
                    ZStack {
                        VStack {
                            Image("spotify")
                                .resizable()
                            .frame(width: 40, height: 40)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        
                        VStack {
                            Text("New Music")
                                .font(.system(size: 22, weight: .bold))
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding(.top, 4)
                        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        
                        VStack {
                            Text("Chemtrails")
                                .font(.system(size: 30, weight: .semibold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("Lana Del Rey")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundColor(.white.opacity(0.7))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            HStack(alignment: .center) {
                                
                            }
                            
                        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                    }

                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(24)
            }
//
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background()
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.28) {
                video.play()
            }
        }
    }
}

#Preview {
    PlayerView()
}
