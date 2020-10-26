//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import  AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var buttonA: UIButton!
    
    var sound: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        audioPlayer(sender.currentTitle!)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
    }
    
    func audioPlayer(_ title:String)
    {
        let url = Bundle.main.url(forResource: title, withExtension: "wav")
        sound = try! AVAudioPlayer(contentsOf: url!)
        sound.play()
        
    }
}

