//
//  ContentView.swift
//  Curaboard
//
//  Created by Daniel Jermaine on 18/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Scrollable content
            ScrollView {
                VStack {
                    Image("curaBoardIcon")
                        .resizable()
                        .frame(width: 64, height: 64)
                    Text("Enable the Curaboard extension in Safari")
                        .foregroundStyle(.black)
                        .font(.system(size: 24, weight: .bold))
                        .multilineTextAlignment(.center)
                    
                    Image("Frame1")
                        .resizable()
                        .frame(maxWidth: 382, maxHeight: 182)
                        .aspectRatio(contentMode: .fill)
                    
                    VStack(alignment: .leading, spacing: 13) {
                        HStack {
                            Image("devicon_safari")
                                .font(.system(size: 16, weight: .regular))
                            Text("Open")
                            
                            + Text(" ") + Text("Safari")
                                .font(.system(size: 16, weight: .bold))
                        }
                        .foregroundStyle(.color575757)
                        
                        HStack {
                            Image("mdi_extension-outline")
                                .font(.system(size: 16, weight: .regular))
                            Text("Tap on")
                            
                            + Text(" ") + Text("Extensions")
                                .font(.system(size: 16, weight: .bold))
                        }
                        .foregroundStyle(.color575757)
                        
                        HStack {
                            Image("ion_toggle")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text("Enable the")
                            
                            + Text(" ") + Text("Curaboard extension")
                                .font(.system(size: 16, weight: .bold))
                        }
                        .foregroundStyle(.color575757)
                        
                        HStack {
                            Image("curaBoardIcon")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text("Save items with ease!")
                                .font(.system(size: 16, weight: .bold))
                        }
                        .foregroundStyle(.color575757)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    
                    Spacer() // Pushes the buttons to the bottom
                }
                .padding()
            }
            
            // Buttons at the bottom
            VStack(spacing: 16) {
                Button {
                    // Handle button action
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
                        .foregroundStyle(.color2D79EC)
                        .underline()
                        .font(.system(size: 14, weight: .regular))
                }
            }
            .padding(.bottom, 20) // Add bottom padding for better spacing
        }
    }
}

#Preview {
    ContentView()
}
