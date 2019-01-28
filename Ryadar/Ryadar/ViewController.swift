//
//  ViewController.swift
//  Ryadar
//
//  Created by Rajashekar ryada on 1/26/19.
//  Copyright © 2019 Rajashekar ryada. All rights reserved.
//

import UIKit

import AVFoundation


class ViewController: UIViewController {

    @IBOutlet weak var imageNme: UIImageView!
    
    var srart : Int = 0
    
    var player: AVAudioPlayer?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func playSound() {
        guard let url = Bundle.main.url(forResource: "soundName", withExtension: "mp3") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            let player = try AVAudioPlayer(contentsOf: url)
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        print("tag is \(sender.tag)")
        
        if(srart == 0){
            imageNme.image = UIImage(named: "name_one")
            srart = srart + 1 
        }else {
            imageNme.image = UIImage(named: "name_two")
            srart = 0
        }
        var result =    printMyTest(myNumber: 20)
        
        print("result is \(result)")
        var myArray = [1,2,3,4,5]
        for s in myArray {
            
        }
    }
    @IBAction func buttonTwoPress(_ sender: UIButton) {
    }
    
    func printMyTest(){
        print("Hello")
    }
    
    func printMyTest(myNumber:Int) -> Int{
        print("Hello\(myNumber)")
        return myNumber*myNumber
    }
    
}

