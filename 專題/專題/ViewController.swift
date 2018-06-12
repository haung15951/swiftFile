//
//  ViewController.swift
//  專題
//
//  Created by user on 2018/6/7.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let vc = storyboard?.instantiateViewController(withIdentifier: "favorite")
        tabBarController?.viewControllers?.append(vc!)
        vc?.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        vc?.tabBarItem.title = "我的最愛"
        print(tabBarController?.selectedIndex)
//        navigationController?.root
        tabBarItem.badgeColor = UIColor.black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

