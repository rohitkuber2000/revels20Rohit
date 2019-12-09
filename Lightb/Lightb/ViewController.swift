//
//  ViewController.swift
//  Lightb
//
//  Created by Rohit Kuber on 08/12/19.
//  Copyright © 2019 Rohit Kuber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

  
    @IBOutlet weak var llabel: UILabel!
    
    
    @IBAction func `switch`(_ sender: UISwitch) {
        
        if( sender.isOn){
            view.backgroundColor = .white
               llabel.textColor = .black
            llabel.text = "Flip switch to turn off"
        
        }
        else{
            view.backgroundColor = .black
            llabel.textColor = .white
            llabel.text = "Flip switch to turn on"

        }
}
    
}

