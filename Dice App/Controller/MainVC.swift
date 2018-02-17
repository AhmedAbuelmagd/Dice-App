//
//  ViewController.swift
//  Dice App
//
//  Created by Ahmed Abuelmagd on 1/23/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit
import AVFoundation


class MainVC: UIViewController {
    var player: AVAudioPlayer = AVAudioPlayer()
    var randomDiceIndex1:Int = 0
    var randomDiceIndex2:Int = 0
    let diceArray = ["WDiceF01","WDiceF02","WDiceF03","WDiceF04","WDiceF05","WDiceF06"]
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImage()
    }

    @IBAction func playBtnPressed(_ sender: Any) {
       updateDiceImage()
        prepareAudio(filename: "diceRoll")
        player.play()
    }
    func updateDiceImage(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        diceImageView1.image=UIImage(named:diceArray[randomDiceIndex1])
        diceImageView2.image=UIImage(named:diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
    func prepareAudio(filename: String){
        do{
            let audioPath = Bundle.main.path(forResource: filename, ofType: ".mp3")
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
        }catch{
            print("error")
        }
    }
    
}

