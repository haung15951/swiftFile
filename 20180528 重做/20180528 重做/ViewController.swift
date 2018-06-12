//
//  ViewController.swift
//  20180528 重做
//
//  Created by user on 2018/5/28.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBAction func onClick(_ sender: Any) {
        
        let alert = storyboard?.instantiateViewController(withIdentifier: "myalert")
        present(alert!, animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

