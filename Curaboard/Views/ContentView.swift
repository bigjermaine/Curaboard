//
//  ContentView.swift
//  Curaboard
//
//  Created by Daniel Jermaine on 18/03/2025.
//
import SwiftUI
import AVKit

struct ContentView: View {
    let safariURL = URL(string: "https://www.curaboard.com/smallwolf438")!

    @State private var videoPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "video", withExtension: "mp4") else {
            fatalError("Failed to find video.mp4 in the app bundle.")
        }
        return AVPlayer(url: url)
    }()
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    Image("curaBoardIcon")
                        .resizable()
                        .frame(width: 64, height: 64)
                    
                    Text("Enable the Curaboard extension in Safari")
                        .foregroundStyle(.black)
                        .font(.system(size: 24, weight: .bold))
                        .multilineTextAlignment(.center)
                    
                    // Video Player with PiP
                    VideoPlayerView(player: videoPlayer)
                        .frame(height: 182)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(12)
                        .shadow(radius: 5)
                        .padding()
                    
                    VStack(alignment: .leading, spacing: 13) {
                        HStack {
                            Image("devicon_safari")
                            Text("Open Safari").bold()
                        }
                        .foregroundStyle(.gray)
                        
                        HStack {
                            Image("mdi_extension-outline")
                            Text("Tap on Extensions")
                                .bold()
                        }
                        .foregroundStyle(.gray)
                        
                        HStack {
                            Image("ion_toggle")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text("Enable the Curaboard extension")
                                .bold()
                        }
                        .foregroundStyle(.gray)
                        
                        HStack {
                            Image("curaBoardIcon")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text("Save items with ease!")
                                .bold()
                        }
                        .foregroundStyle(.gray)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    
                    Spacer()
                }
                .padding()
            }
            
            VStack(spacing: 16) {
                Button {
                    openURLInSafari()
                } label: {
                    Text("Enable Curaboard")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: 304, maxHeight: 44)
                        .background(Color.black)
                        .cornerRadius(8)
                }
                
                Button {
                    // Handle button action
                } label: {
                    Text("See Supported Stores")
                        .foregroundStyle(.blue)
                        .underline()
                        .font(.system(size: 14, weight: .regular))
                }
            }
            .padding(.bottom, 20)
        }
    }
    
    private func openURLInSafari() {
        if UIApplication.shared.canOpenURL(safariURL) {
            UIApplication.shared.open(safariURL)
        } else {
            print("Failed to open URL: \(safariURL)")
        }
    }
}


#Preview {
    ContentView()
}
