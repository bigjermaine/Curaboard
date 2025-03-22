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
    @StateObject private var linkViewModel = LinkViewModel()
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
                    VStack(spacing:20){
                        integratedStores
                        ExtendedStores
                    }
                    .padding()
                    .background(.colorEAEAEA)
                    .frame(maxWidth: .infinity, maxHeight:255)
                    .background(.colorEAEAEA)
                    .cornerRadius(8)
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

extension LoginView {
    var integratedStores:some View {
        VStack(spacing: 20){
            Button{
                
            }label: {
                Text("Integrated stores")
                    .foregroundStyle(.white)
                    .font(.system(size: 12, weight: .regular))
                    .padding(4)
            }
            .background(.colorAFAFAF)
            .cornerRadius(4)
            
            HStack{
                Button{
                    linkViewModel.openStoreLink(for: .eleve)
                }label: {
                    Image("ELEVE")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100,height: 20)
                        .clipped()
                }
                Button{
                    linkViewModel.openStoreLink(for: .chieftain)
                }label: {
                    Image("CHIEFTAIN")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100,height: 20)
                        .clipped()
                }
                Button{
                    linkViewModel.openStoreLink(for: .osami)
                }label: {
                    Image("Osami")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100,height: 20)
                        .clipped()
                }
            }
            Button{
                linkViewModel.openStoreLink(for: .seeAll)
            }label: {
                HStack(spacing:2){
                    Text("See all")
                        .foregroundStyle(.colorAFAFAF)
                        .font(.system(size: 12, weight: .medium))
                    Image(systemName:"chevron.right")
                        .resizable()
                        .frame(width: 5,height: 5)
                        .foregroundStyle(.colorAFAFAF)
                        
                }
            }
        }
    }
    var ExtendedStores:some View{
        VStack(spacing: 20){
            Button{
                
            }label: {
                Text("Extension stores")
                    .foregroundStyle(.white)
                    .font(.system(size: 12, weight: .regular))
                    .padding(4)
            }
            .background(.colorAFAFAF)
            .cornerRadius(4)
            HStack{
                Button{
                    linkViewModel.openStoreLink(for: .mango)
                }label: {
                    Image("mango")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100,height: 20)
                        .clipped()
                }
                Button{
                    linkViewModel.openStoreLink(for: .peppermayo)
                }label: {
                    Image("peppermayo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100,height: 20)
                        .clipped()
                }
                Button{
                    linkViewModel.openStoreLink(for: .aritzia)
                }label: {
                    Image("aritzia")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100,height: 20)
                        .clipped()
                }
            }
            Button{
                linkViewModel.openStoreLink(for: .seeAll)
            }label: {
                HStack(spacing:2){
                    Text("See all")
                        .foregroundStyle(.colorAFAFAF)
                        .font(.system(size: 12, weight: .medium))
                    Image(systemName:"chevron.right")
                        .resizable()
                        .frame(width: 5,height: 5)
                        .foregroundStyle(.colorAFAFAF)
                        
                }
            }
        }
    }
}
