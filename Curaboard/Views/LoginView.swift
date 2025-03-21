//
//  LoginView.swift
//  Curaboard
//
//  Created by Daniel Jermaine on 19/03/2025.
//

import SwiftUI
import AVKit

struct LoginView: View {
    @State private var videoPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "video", withExtension: "mp4") else {
            fatalError("Failed to find video.mp4 in the app bundle.")
        }
        return AVPlayer(url: url)
    }()
    var body: some View {
        VStack {
            ScrollView {
                VStack(spacing:15) {
                    Text("Curaboard is ready!")
                        .foregroundStyle(.color1D1B20)
                        .font(.system(size: 24, weight: .bold))
                        .multilineTextAlignment(.center)
                    Text("Start saving items effortlessly with\n Curaboard. See how it works below.")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundStyle(.color1D1B20)
                        .multilineTextAlignment(.center)
                    VideoPlayerView(player: videoPlayer)
                        .frame(height: 182)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(12)
                        .shadow(radius: 5)
                        .padding()
                    Text("Here are some of our favorite stores to use curaboard with")
                        .foregroundStyle(.color1D1B20)
                        .font(.system(size: 16, weight: .regular))
                        .multilineTextAlignment(.center)
                    Image("image12")
                        .resizable()
                        .frame(maxWidth: 382, maxHeight:255)
                        .aspectRatio(contentMode: .fill)
                        .padding()
                    
                    Spacer()
                }
                .padding()
            }
            VStack{
                HStack{
                    Image("Vector")
                    Text("You’ll be redirected to Curaboard to login/sign up.")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundStyle(.colorEC7D2D)
                   
                }
                .padding(4)
                .background(.colorFFECD6)
                .cornerRadius(6)
                Button {
                    // Handle button action
                } label: {
                    Text("Login")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: 304, maxHeight: 44)
                        .background(Color.black)
                        .cornerRadius(8)
                }
            }
            .padding(.bottom, 20)
        }
    }
}

#Preview {
    LoginView()
}
