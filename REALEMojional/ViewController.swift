//
//  ViewController.swift
//  REALEMojional
//
//  Created by Apple on 6/21/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["🇺🇸": "America", "🇯🇵": "Japan", "🇪🇸": "Spain", "🇦🇪": "U.A.E", "🇩🇪": "Germany", "🇵🇰": "Pakistan"]
    
    let customMessages = [
        "America": ["Hello", "Thank You", "Love"],
        "Japan": ["Kon'nichiwa", "Arigato", "Ai"],
        "Spain": ["Hola", "Gracias", "Amor"],
        "U.A.E": ["Marhaba", "Shukraan", "Hubun"],
        "Germany": ["Hallo","Danke","Liebe"],
        "Pakistan": ["Salam", "Shukria", "Pyaar"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMessage(sender: UIButton) {
    let selectedEmotion = sender.titleLabel?.text
        
    let emotionArray = customMessages[emojis[selectedEmotion!]!]
    
    let random = Int.random(in: 0..<emotionArray!.count)
    
    let emojiMessage = emotionArray ?[random]

        
    
    let alertController = UIAlertController(title: "Countries", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)

    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    
    present(alertController,animated: true, completion: nil)

    }
}
