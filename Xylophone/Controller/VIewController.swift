//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    // MARK: - Properties
    private var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    // MARK: - IBAction Section
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        print("User pressed \(sender.currentTitle!) (\(sender.tag)) note.")
        
        playSound(soundFileName: sender.currentTitle!)
        
    }
    
    // MARK: - Private Function Section
    
    private func playSound(soundFileName: String) {
        
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
        
    }
    
}
