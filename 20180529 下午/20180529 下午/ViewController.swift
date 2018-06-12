//
//  ViewController.swift
//  20180529 下午
//
//  Created by user on 2018/5/29.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class ViewController:UIViewController ,UIPickerViewDelegate,UIPickerViewDataSource
    
{  let list = [["台北","台中","高雄"],["新竹","苗栗","彰化"]]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return list.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return list[component].count
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        print (list[component][row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print (list[component][row])
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
      func numberComponents(i)
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        override func touchesBegan(<#T##touches: Set<UITouch>##Set<UITouch>#>, with: <#T##UIEvent?#>){
            let picker = view.viewWithTag(100) as! UIPickerView
            let left = list[0][picker.selectedRow(inComponent: 0)]
            let right = list[1][picker.selectedRow(inComponent: 1)]
        }
        // Dispose of any resources that can be recreated.
    }


}
