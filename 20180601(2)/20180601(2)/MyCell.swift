//
//  MyCell.swift
//  20180601(2)
//
//  Created by user on 2018/6/1.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class MyCell: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if 單價.text == ""{
            print("價格未輸入
        ")
            return
        }
        // Do any additional setup after loading the view.
    }
    let price = Int(單價.text!)
    if 產品名稱.text == "鉛筆",price < 3
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func showalert(_msg:String){
        let alert -= UIAlertController(title: "Ok", message: .default, preferredStyle: <#T##UIAlertControllerStyle#>)
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
