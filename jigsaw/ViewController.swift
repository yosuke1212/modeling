//
//  ViewController.swift
//  jigsaw
//
//  Created by 親川　弥月 on 2017/12/11.
//  Copyright © 2017年 親川　弥月. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label:UILabel!
    
    @IBAction func goBack(_ segue:UIStoryboardSegue) {}
    
    @IBAction func goNext(_ sender:UIButton) {
        let next = storyboard!.instantiateViewController(withIdentifier: "nextView_difficulty")
        self.present(next,animated: true, completion: nil)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "JIGSAWPAZZLE"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

