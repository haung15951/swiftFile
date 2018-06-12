//
//  ViewController.swift
//  20180601(2)
//
//  Created by user on 2018/6/1.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit


class Car {
    static private var 建議售價 = 10000
    var 車牌 = ""
    static func 修改建議售價(_ value:Int)
}





class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    let list = ["鉛筆","橡皮擦","筆芯"]
    
    override func 
    
        
        
        
        
    override; func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
    };int(){
    super.init()
    list.append("鉛筆")
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

