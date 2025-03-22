//
//  LinkViewModel.swift
//  Curaboard
//
//  Created by Daniel Jermaine on 22/03/2025.
//

import Foundation
import Foundation
import UIKit

enum LinkStores {
    case eleve
    case chieftain
    case osami
    case seeAll
    case mango
    case peppermayo
    case aritzia
}

class LinkViewModel: ObservableObject {
    
    // Function to open the corresponding URL in Safari
    func openStoreLink(for store: LinkStores) {
        let urlString: String
        
        switch store {
        case .eleve:
            urlString = "https://studio-eleve.com/"
        case .chieftain:
            urlString = "https://chieftain.co/"
        case .osami:
            urlString = "https://osamiofficial.com/"
        case .seeAll:
            urlString = "https://www.curaboard.com/stores?defaultTab=Extension"
        case .mango:
            urlString = "https://shop.mango.com/"
        case .peppermayo:
            urlString = "https://peppermayo.com/"
        case .aritzia:
            urlString = "https://www.aritzia.com/"
        }
        
        // Convert the URL string to a URL object
        if let url = URL(string: urlString) {
            // Open the URL in Safari
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url)
            } else {
                print("Failed to open URL: \(urlString)")
            }
        } else {
            print("Invalid URL: \(urlString)")
        }
    }
}
