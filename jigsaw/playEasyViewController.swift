//
//  playEasyViewController.swift
//  jigsaw
//
//  Created by 親川　弥月 on 2018/01/11.
//  Copyright © 2018年 親川　弥月. All rights reserved.
//

import UIKit

class plyaEasyViewController: UIViewController {
    var start:TimeInterval = Date().timeIntervalSince1970
    var now:TimeInterval = Date().timeIntervalSince1970

    @IBOutlet weak var label: UILabel!
    var timer:Timer!
    var timerRunning: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        if timerRunning == false{
            start = Date().timeIntervalSince1970
            timer = Timer.scheduledTimer(timeInterval: 0.01,
                                         target: self,
                                         selector: #selector(self.countStart),
                                         userInfo: nil,
                                         repeats: true)
            timerRunning = true
        }
    }
    
    
    @IBAction func stopButtonPressed(_ sender: Any) {
        if timerRunning == true{
            timer.invalidate()
            timerRunning = false
        }
        
    }
    
    @objc func countStart(){
        now = Date().timeIntervalSince1970
        let elapsed: TimeInterval = now - self.start
        label.text = ("\(elapsed)")
    }
    
}

