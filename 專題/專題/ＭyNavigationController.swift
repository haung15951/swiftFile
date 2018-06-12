//
//  ＭyNavigationController.swift
//  專題
//
//  Created by user on 2018/6/7.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class _yNavigationController: UINavigationController ,UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        // Do any additional setup after loading the view.
    }
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        navigationController.navigationBar.barTintColor = UIColor.black
            let imageView = UIImageView (image: UIImage(named: "Book"))
            imageView.contentMode = .scaleAspectFit
        viewController.navigationItem.titleView = imageView
        print (tabBarController?.selectedIndex)
        
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
