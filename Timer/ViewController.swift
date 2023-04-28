//
//  ViewController.swift
//  Timer
//
//  Created by Canan Yavuz on 28.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    
    
    var timer = Timer()
    var lastTime = 0
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lastTime = 15
        Label.text =  "Zaman: \(lastTime)"
    }

    @IBAction func startClick(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerFunc(){
        
        Label.text = "Zaman: \(lastTime)"
        lastTime = lastTime - 1
        
        if (lastTime == -1){
            Label.text = "Süre Bitti."
            timer.invalidate()
            lastTime = 15
        }
        
    }
}

