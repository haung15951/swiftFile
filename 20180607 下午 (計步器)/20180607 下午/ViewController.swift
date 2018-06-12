//
//  ViewController.swift
//  20180607 下午
//
//  Created by user on 2018/6/7.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    
    let pedometer = CMPedometer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pedometer.queryPedometerData(from: Date().addingTimeInterval(-24 * 60 * 60), to: Date()){(pedometerData,error) in if error != nil{print(error!)}else{
            print(pedometerData!.numberOfSteps)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

