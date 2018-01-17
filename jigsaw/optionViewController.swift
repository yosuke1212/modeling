//
//  optionViewController.swift
//  jigsaw
//
//  Created by 親川　弥月 on 2017/12/15.
//  Copyright © 2017年 親川　弥月. All rights reserved.
//

import UIKit

class optionViewController: UIViewController {
    
    @IBOutlet weak var option:UILabel!
    @IBOutlet weak var sound:UILabel!
    @IBOutlet weak var clockCount:UILabel!
    
    //サウンドのオンオフスイッチ
    @IBOutlet weak var label: UILabel!
    @IBAction func switchChanged(_ sender: UISwitch) {
        label.text = sender.isOn ? "ON":"OFF"
    }
    
    //時間を計るオンオフスイッチ
    @IBOutlet weak var clock: UILabel!
    @IBAction func SwitchChanged(_ sender: UISwitch) {
        clock.text = sender.isOn ? "ON":"OFF"
    }
    
    
    
    @IBAction func goBack(_ segue:UIStoryboardSegue) {}

    override func viewDidLoad() {
        super.viewDidLoad()
        option.text = "オプション"
        sound.text = "サウンド"
        clockCount.text = "時間を計る"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
