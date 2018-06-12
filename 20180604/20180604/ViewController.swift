//
//  ViewController.swift
//  20180604
//
//  Created by user on 2018/6/4.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var src, dst:String
        let fm = FileManager.default
        let path = NSHomeDirectory() + "/Documents"
        
        ////////////
        src = path + "/dir1"
        do {
            try fm.createDirectory(atPath: src, withIntermediateDirectories: true, attributes: nil)
        }catch{
            print("建立 dir1 目錄失敗")
        }
        
        ///////////
        src = path + "/dir1"
        dst = path + "/dir2"
        
        do{
            try fm.copyItem(atPath: src, toPath: dst)
        }catch{
            print("移動目錄失敗")
        }
        ///////////
        dst = path + "/dir3"
        do{
            try fm.removeItem(atPath: dst)
        }catch{
            print("刪除目錄失敗")
            ///////////
            dst = path + "/dir3"
            if fm.fileExists(atPath: dst){
                print("目錄失敗")
                
            }else{
                print("目錄不存在")
            }
        }
        print (NSHomeDirectory())

        let user = UserDefaults.standard
        user.set("hello", forKey: MYKEYS.Key1)
        
        let path = NSHomeDirectory() + "/Documents/Property List.plist"
        if let plist = NSMutableDictionary(contentsOfFile: path){
            if let color = plist["Color"]{
                print("The color is !(color)")
                
                if plist.write(to: path, atomically: true){
                    print("修改顏色成功")
                }
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

}


