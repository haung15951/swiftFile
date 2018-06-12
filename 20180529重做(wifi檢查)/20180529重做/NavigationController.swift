//
//  NavigationController.swift
//  20180529重做
//
//  Created by user on 2018/5/29.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit
import  SystemConfiguration
class NavigationController: UINavigationController,UINavigationControllerDelegate {
    let reach = SCNetworkReachabilityCreateWithName(nil, "google.com.tw")
    func checkNetWork(_ bn:UIBarButtonItem){
        
        var flag = SCNetworkReachabilityFlags()
        SCNetworkReachabilityGetFlags(reach!, &flag)
        DispatchQueue.main.async {
            if flag.contains(.reachable){
                bn.image = UIImage(named: "wifi")?.withRenderingMode(.alwaysOriginal)
                
            }else{
                bn.image = UIImage(named: "nowifi")?.withRenderingMode(.alwaysOriginal)
            }
        }
        
    }
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        print("hello")
        var btn = viewController.navigationItem.rightBarButtonItem
        if btn == nil{
            btn = UIBarButtonItem()
            viewController.navigationItem.rightBarButtonItem = btn
            
        }
        checkNetWork(btn!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        checkNetWork()
        delegate = self
        Timer.scheduledTimer(withTimeInterval: 2, repeats: true){
            (timer) in
            if let btn = self.topViewController?.navigationItem.rightBarButtonItem{
                self.checkNetWork(btn)
            }
        }
        // Do any additional setup after loading the view.
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
