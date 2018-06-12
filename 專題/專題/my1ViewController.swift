//
//  my1ViewController.swift
//  專題
//
//  Created by user on 2018/6/10.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class my1ViewController: UIViewController {

    @IBAction func onclickTest(_ sender: UIButton) {
        print("AAA")
        print(tabBarController?.selectedIndex)
        
    }
    override func viewWillAppear(_ animated: Bool) {

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()



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
