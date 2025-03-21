//
//  VideoPlayerView.swift
//  Curaboard
//
//  Created by Daniel Jermaine on 21/03/2025.
//

import SwiftUI
import AVKit
// MARK: - VideoPlayerView (PiP Support)

struct VideoPlayerView: UIViewControllerRepresentable {
    let player: AVPlayer
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        playerViewController.allowsPictureInPicturePlayback = true
        playerViewController.showsPlaybackControls = true
        
        // Enable background playback
        try? AVAudioSession.sharedInstance().setCategory(.playback, mode: .moviePlayback, options: [])
        try? AVAudioSession.sharedInstance().setActive(true)
        
        // Access the player layer and setup PiP
        if let playerLayer = (playerViewController.view.layer.sublayers?.first { $0 is AVPlayerLayer }) as? AVPlayerLayer {
            context.coordinator.setupPiP(for: playerLayer)
        }
        
        player.play()
        return playerViewController
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) { }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
    
    class Coordinator: NSObject, AVPictureInPictureControllerDelegate {
        var parent: VideoPlayerView
        var pipController: AVPictureInPictureController?
        
        init(_ parent: VideoPlayerView) {
            self.parent = parent
        }
        
        func setupPiP(for playerLayer: AVPlayerLayer) {
            if AVPictureInPictureController.isPictureInPictureSupported() {
                pipController = AVPictureInPictureController(playerLayer: playerLayer)
                pipController?.delegate = self
            }
        }
        
        func startPiP() {
            if let pipController = pipController, pipController.isPictureInPicturePossible {
                pipController.startPictureInPicture()
            }
        }
        
        func pictureInPictureControllerDidStartPictureInPicture(_ controller: AVPictureInPictureController) {
            print("PiP started")
        }
        
        func pictureInPictureControllerDidStopPictureInPicture(_ controller: AVPictureInPictureController) {
            print("PiP stopped")
        }
    }
}
