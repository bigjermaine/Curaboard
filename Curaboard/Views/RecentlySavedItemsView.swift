//
//  RecentlySavedItems.swift
//  Curaboard
//
//  Created by Daniel Jermaine on 20/03/2025.
//

import SwiftUI

struct RecentlySavedItemsView: View {
    
    var body: some View {
        ZStack{
            Color.colorF8F7F4.edgesIgnoringSafeArea(.all)
            TabView{
                ForEach(recentlySavedItems) { item in
                    VStack{
                        ScrollView {
                            VStack(spacing:20){
                                VStack{
                                    VStack(alignment:.leading){
                                        Text("Recently saved items")
                                            .foregroundStyle(.color575757)
                                            .font(.system(size: 17.5,weight: .bold))
                                            .padding(.horizontal)
                                        
                                    }
                                    .frame(maxWidth: .infinity,alignment: .leading)
                                    Image("lofi wireframe")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 244, height: 190,alignment: .center)
                                        .clipped()
                                        .cornerRadius(12)
                                        .padding()
                                    HStack {
                                        Text("You haven’t saved anything yet,")
                                            .foregroundStyle(.color575757)
                                            .font(.system(size: 14,weight: .regular))
                                        +
                                        Text("start by exploring stores")
                                            .foregroundStyle(.colorFF004C)
                                            .font(.system(size: 14,weight: .bold))
                                            .underline()
                                        
                                    }
                                    
                                    .multilineTextAlignment(.center)
                                    
                                    
                                    
                                }
                                .frame(width: .infinity,height: 310)
                                .background(Color.white)
                                .cornerRadius(12)
                                .padding()
                                
                                Image("Frame3")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: .infinity,height: 300)
                                    .padding(.horizontal)
                                    .clipped()
                                
                            }
                            .frame(maxWidth: .infinity,maxHeight: .infinity)
                        }
                        HStack{
                            Text(item.description)
                                .foregroundStyle(.color575757)
                                .font(.system(size: 14.5,weight: .regular))
                                .padding()
                                .padding(.bottom,30)
                        }
                    }
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        
        }
    }
}

#Preview {
    RecentlySavedItemsView()
}



