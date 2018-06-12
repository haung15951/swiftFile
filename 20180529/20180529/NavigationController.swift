//
//  NavigationController.swift
//  20180529
//
//  Created by user on 2018/5/29.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit
import SystemConfiguration

class NavigationController: UINavigationController,UINavigationControllerDelegate {
    
     let reach = SCNetworkReachabilityCreateWithName(nil, "google.com.tw")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
        var n = 0
        // Do any additional setup after loading the view.
    
        Timer.scheduledTimer(withTimeInterval: 2, repeats: true){
            (time) in
           if  let bn = self.topViewController?.navigationItem.rightBarButtonItem{
                self.checkNetwork(bn)
                print(n)
                 n += 1
            }
        }
    }
    
     func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        print("hello")
        
        var bn = viewController.navigationItem.rightBarButtonItem
        if bn == nil{
            bn = UIBarButtonItem()
            viewController.navigationItem.rightBarButtonItem = bn
        }
            checkNetwork(bn!)
    }
    
    func checkNetwork(_ bn:UIBarButtonItem){
        var flags = SCNetworkReachabilityFlags()
        SCNetworkReachabilityGetFlags(reach!, &flags)
        DispatchQueue.main.async {

            if flags.contains(.reachable){
                bn.image = UIImage(named:"wifi")?.withRenderingMode(.alwaysOriginal)
            }
            else{
               bn.image = UIImage(named:"nowifi")?.withRenderingMode(.alwaysOriginal)
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
