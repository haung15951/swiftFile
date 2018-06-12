//
//  ViewController.swift
//  20180528 下午
//
//  Created by user on 2018/5/28.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func onClick(_ sender: Any) {
        let alert = storyboard?.instantiateViewController(withIdentifier: "iii")
        present(alert!, animated: true, completion: nil)
    }
    

//    @IBAction func onclick(_ sender: Any) {
//
//        let alert = storyboard?.instantiateViewController(withIdentifier: "iii")
//        present(alert!, animated: true, completion: nil)
//        //present(alert!, animated: true, completion: nil)
//    }
    func 完成後請通知我(_ hhh:String){
        print(hhh)
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

