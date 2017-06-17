//
//  sound.swift
//  tipCalC
//
//  Created by Daya on 6/16/17.
//  Copyright © 2017 Daya. All rights reserved.
//

import Foundation
import AVFoundation


// creating an audioplayer object

var audioPlayer1 = AVAudioPlayer()
func calculateSound() {
    
    let alertSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "coin", ofType: "mp3")!)
    
    // do it and try if it has a value
    do {
        try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
    } catch{
    }
    do {
        try AVAudioSession.sharedInstance().setActive(true)
    } catch{
    }
    
    // Play the sound
    do {
        audioPlayer1 = try AVAudioPlayer(contentsOf: alertSound as URL)
    } catch {
    }
    
    audioPlayer1.prepareToPlay()  // preparing to play
    audioPlayer1.play()   // triggers the play action
}
