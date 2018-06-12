//
//  MyAlert.swift
//  20180528 下午
//
//  Created by user on 2018/5/28.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class MyAlert: UIViewController {
    @IBOutlet weak var alertview: UIView!
    
    
    @IBAction func onDismiss(_ sender: Any) {
//        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        alertview.layer.cornerRadius = 10
//        toggleControl(true)
        
        // Do any additional setup after loading the view.
    }
    
    
    private func toggleControl (_ flag:Bool){
        for v in (presentingViewController?.view.subviews)!{
            if v is UIControl{
                (v as! UIControl).isEnabled = true
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
