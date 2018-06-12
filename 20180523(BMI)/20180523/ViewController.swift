//
//  ViewController.swift
//  20180523
//
//  Created by user on 2018/5/23.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    
    @IBAction func cal(_ sender: Any) {
        
        let x = Float(height.text!)
        let y = Float(weight.text!)
        let z = (y! / (x! * x!))
        BMI.text = "\(z)"
    }
    
    @IBOutlet weak var BMI: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

