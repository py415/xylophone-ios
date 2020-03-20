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
    
    // Properties
    var audioPlayer: AVAudioPlayer!
    let colorArray = ["red", "orange", "yellow", "green", "turqoise", "blue", "purple"]
    let soundArray = ["C", "D", "E", "F", "G", "A", "B"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        print("User pressed \(colorArray[sender.tag - 1]) (\(sender.tag - 1)) note.")
        playSound(soundFileName: soundArray[sender.tag - 1])
        
    }
    
    func playSound(soundFileName: String) {
        
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
        
    }
    
}
