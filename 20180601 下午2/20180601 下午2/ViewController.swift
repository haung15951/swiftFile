//
//  ViewController.swift
//  20180601 下午2
//
//  Created by user on 2018/6/1.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate ,UITableViewDataSource {
  
    let list = ["20140304164706455.jpg","20170926111545955.jpg"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ((list.count-1) % 2 == 1) ? ( ( list.count - 1 ) / 2) + 1 + 1 : ( list.count - 1 ) / 2 + 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let leftImageView = cell.viewWithTag(100) as! UIImageView
        let rightImageView = cell . viewWithTag(200) as! UIImageView
        
        leftImageView.image = UIImage ( named : list[indexPath.row * 2 - 1 ] )
        if indexPath.row * 2 < list.count{
            rightImageView.image = UIImage( named: list [ indexPath.row * 2 ] )
            
            if let rightImageView = cell.viewWithTag(200) as? UIImageView{
                rightImageView.superview?.removeFromSuperview()
            }
            
        }else{
             rightImageView.image = nil
        }
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

