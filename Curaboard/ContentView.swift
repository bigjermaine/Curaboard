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
            Image("curaBoardIcon")
                .resizable()
                .frame(width: 64, height: 64)
            Text("Enable the Curaboard extension in Safari")
                .foregroundStyle(.black)
                .font(.system(size: 24, weight: .bold))
                .multilineTextAlignment(.center)
            Spacer()
   
                
                VStack(alignment:.leading){
                    HStack{
                        Image("devicon_safari")
                            .font(.system(size: 16, weight: .regular))
                        Text("Open")
                        
                        +  Text(" ") + Text("Safari")
                            .font(.system(size: 16, weight: .bold))
                       
                    }
                    .foregroundStyle(.color575757)
                    HStack{
                        Image("mdi_extension-outline")
                            .font(.system(size: 16, weight: .regular))
                        Text("Tap on")
                        
                        +  Text(" ") + Text("Extensions")
                            .font(.system(size: 16, weight: .bold))
                      
                    }
                    .foregroundStyle(.color575757)
                    HStack{
                        Image("devicon_safari")
                            .font(.system(size: 16, weight: .regular))
                        Text("Open")
                        
                        +  Text(" ") + Text("Safari")
                            .font(.system(size: 16, weight: .bold))
                      
                    }
                    .foregroundStyle(.color575757)
                    
                }
                .frame(maxWidth: .infinity, alignment: .center)
               
          
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
