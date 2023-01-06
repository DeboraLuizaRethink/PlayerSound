//
//  ViewController.swift
//  PlayerSound
//
//  Created by Debora Luiza on 06/01/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {


    @IBAction func atualizarVolume(_ sender: Any) {
        player.volume = sliderVolume.value
        
    }
    
    @IBOutlet weak var sliderVolume: UISlider!
    
    @IBAction func play(_ sender: Any) {
        player.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        player.pause()
    }
    
    @IBAction func stop(_ sender: Any) {
        player.stop()
        player.currentTime = 0
    }
    
    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let path = Bundle.main.path(forResource: "iwtbf", ofType: "mp3"){
            let url = URL(fileURLWithPath: path)
            
            do{
                player =  try AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
                
            }catch{
                print("Erro ao executar o som")
            }
        }
        
    }


}

