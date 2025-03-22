//
//  CuraboardApp.swift
//  Curaboard
//
//  Created by Daniel Jermaine on 18/03/2025.
//
import SwiftUI
import AVFoundation

@main
struct MyApp: App {
    init() {
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [])
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print("Failed to set AVAudioSession: \(error.localizedDescription)")
        }
    }

    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
