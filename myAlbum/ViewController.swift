//
//  ViewController.swift
//  myAlbum
//
//  Created by 小林弥子 on 2020/03/11.
//  Copyright © 2020 Step App School. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer:AVAudioPlayer!
    

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func segChangeAnimal(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0) {
            imageView.image = UIImage(named: "cat.png")
            self.audioPlayer = General.playSound(delegate: self, name: "nyaon", type: "mp3")
        }
        else if(sender.selectedSegmentIndex == 1) {
            imageView.image = UIImage(named: "elephant.png")
            self.audioPlayer = General.playSound(delegate: self, name: "paon", type: "mp3")
        }
        else if(sender.selectedSegmentIndex == 2) {
            imageView.image = UIImage(named: "pig.png")
            self.audioPlayer = General.playSound(delegate: self, name: "bu_bu", type: "mp3")
        }
        else if(sender.selectedSegmentIndex == 3) {
            imageView.image = UIImage(named: "seal.png")
            self.audioPlayer = General.playSound(delegate: self, name: "bukubuku", type: "mp3")
        }
    }
}

