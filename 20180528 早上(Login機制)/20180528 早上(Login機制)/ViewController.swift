//
//  ViewController.swift
//  20180528 早上(Login機制)
//
//  Created by user on 2018/5/29.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var uid: UITextField!
    @IBOutlet weak var pwd: UITextField!
    var html:String = "0"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onclick(_ sender: Any) {
        let alert = UIAlertController(title:"Title")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

