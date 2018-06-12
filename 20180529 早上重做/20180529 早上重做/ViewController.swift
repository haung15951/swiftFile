//
//  ViewController.swift
//  20180529 早上重做
//
//  Created by user on 2018/5/29.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit
import SystemConfiguration
class ViewController: UIViewController , UINavigationControllerDelegate{
    
    let reach = SCNetworkReachabilityCreateWithName(nil, "google.com.tw")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func ckeckNetwork(){
        var  flag = SCNetworkReachabilityFlags()
        SCNetworkReachabilityGetFlags(reach!, &flag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

