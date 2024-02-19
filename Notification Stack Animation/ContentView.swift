//
//  ContentView.swift
//  Notification Stack Animation
//
//  Created by Oluwaseyi Oluwadare on 18/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var topCard = 1
    @State private var globalRotation = 0.0
    @State private var currentIndex = 1
    
    var body: some View {
        ZStack {
            VStack {
                Image("Wallpaper")
            }
            .clipShape(RoundedRectangle(cornerRadius: 40, style: .continuous))
                
            HStack{
                HStack {
                    VStack{
                        Image(systemName: "flashlight.off.fill")
                    }
                    .frame(width: 50.0, height: 50.0)
                    .background(Color.black.opacity(0.35))
                    .clipShape(Circle())
                    
                    Spacer()
                    
                    VStack{
                        Image(systemName: "camera.fill")
                    }
                    .frame(width: 50.0, height: 50.0)
                    .background(Color.black.opacity(0.35))
                    .clipShape(Circle())
                }
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                .padding(.vertical, 40)
                .padding(.horizontal, 32)
            ZStack {
                Card(color: Color("red"), index: 3, topCard: $topCard, globalRotation: $globalRotation, currentIndex: $currentIndex)
                Card(color: Color("white"), index: 2, topCard: $topCard, globalRotation: $globalRotation, currentIndex: $currentIndex)
                Card(color: Color("blue"), index: 1, topCard: $topCard, globalRotation: $globalRotation, currentIndex: $currentIndex)
            }
            .frame(maxHeight: .infinity, alignment: .bottom)
            .onAppear{
                
            }
        }
        .ignoresSafeArea()
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
