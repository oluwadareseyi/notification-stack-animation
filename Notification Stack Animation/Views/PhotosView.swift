//
//  PhotosView.swift
//  Notification Stack Animation
//
//  Created by Oluwaseyi Oluwadare on 19/02/2024.
//

import SwiftUI

struct PhotosView: View {
    var body: some View {
        ZStack {
            Image("Widget Container")
            VStack {}
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.3))
            
            VStack {
                Text("ON THIS DAY")
                    .font(.system(size: 28, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .fontWidth(.compressed)
                
                Text("Feb 19, 2023")
                    .font(.system(size: 14, weight: .medium))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .fontWidth(.expanded)
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                .padding(.vertical, 40)
                .padding(.horizontal, 32)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
