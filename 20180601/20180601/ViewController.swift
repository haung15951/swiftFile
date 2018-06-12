//
//  ViewController.swift
//  20180601
//
//  Created by user on 2018/6/1.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource {

    let list = ["台北","台中\n彰化\n雲林","高雄"]
    
    @IBAction func changecolor(_ sender: UISwitch) {
            let lable = sender.superview?.viewWithTag(100) as! UILabel
//        if sender.isOn{
//            lable.backgroundColor = UIColor.green
//
//        }else{
//            lable.backgroundColor = UIColor.yellow
//        }
        lable.backgroundColor = (sender.isOn) ? .green : .yellow
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableView.rowHeight = UITableViewAutomaticDimension
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let label = cell.viewWithTag(100) as! UILabel
        label.text = list[indexPath.row]
        return cell
    }
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

}

