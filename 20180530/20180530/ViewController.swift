//
//  ViewController.swift
//  20180530
//
//  Created by user on 2018/5/30.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIGestureRecognizerDelegate{

    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    var originalX: CGFloat! = 0
    
    @IBAction func edage(_ sender: UIScreenEdgePanGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
        switch sender.state {
        
        case  .began:
            originalX = location.x
        
        case .ended:
            if leadingConstraint.constant > 0{
                leadingConstraint.constant = 0
                UIView.animate(withDuration: 0.5){
                    self.view.layoutIfNeeded()
                }
            }
        case .changed:
            leadingConstraint.constant = -220 + location.x - originalX
        default:
            break
        }
        
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

