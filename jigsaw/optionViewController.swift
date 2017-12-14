//
//  optionViewController.swift
//  jigsaw
//
//  Created by 親川　弥月 on 2017/12/14.
//  Copyright © 2017年 親川　弥月. All rights reserved.
//

import UIKit

class optionViewController: UIViewController {

    @IBOutlet weak var option: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    option.text = "オプション"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
