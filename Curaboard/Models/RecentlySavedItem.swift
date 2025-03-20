//
//  RecentlySavedItem.swift
//  Curaboard
//
//  Created by Daniel Jermaine on 20/03/2025.
//

import Foundation

struct RecentlySavedItem: Codable, Identifiable {
    var id = UUID() //
    var image: String
    var description: String
}

// Static array of RecentlySavedItem
let recentlySavedItems: [RecentlySavedItem] = [
    RecentlySavedItem(image: "Frame2", description: "Open a product page"),
    RecentlySavedItem(image: "Frame2", description: "Select the curaboard extension"),
    RecentlySavedItem(image: "Frame3", description: "City skyline at night"),
   
]
