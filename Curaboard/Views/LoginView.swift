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
        guard let url = Bundle.main.url(forResource: "video1", withExtension: "mp4") else {
            fatalError("Failed to find video.mp4 in the app bundle.")
        }
        return AVPlayer(url: url)
    }()
    @StateObject private var linkViewModel = LinkViewModel()
    var body: some View {
        VStack {
          
        }
        .onAppear{
            getAll()
        }
    }
    func getAll() {
        let sharedDefaults = UserDefaults(suiteName: "group.com.jermaine")
        if let fonts = sharedDefaults?.stringArray(forKey: "detectedFonts") {
            print("Fonts from Safari Extension:", fonts)
            // Show in UI, progress view, etc.
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
