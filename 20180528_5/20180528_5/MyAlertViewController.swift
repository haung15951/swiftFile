//
//  MyAlertViewController.swift
//  20180528_5
//
//  Created by user on 2018/5/28.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class MyAlertViewController: UIViewController {
   
   @IBAction func onDismiss(_ sender: Any) {
      let vc = presentingViewController as! ViewController
 
    
        dismiss(animated: true, completion: nil)
        
    }
    @IBOutlet weak var alertView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alertView.layer.cornerRadius = 10

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
