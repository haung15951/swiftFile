//
//  DMDatabase.swift
//  20180604
//
//  Created by user on 2018/6/4.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit
import SQLite3

class DMDatabase: NSObject {
    
    private var static_instance: DMDatabase? = nil
    private var _db: OpaquePointer? = nil
    
    static var shared: DMDatabase {
        get {
            if _instance == nil
             _insrance = DMDatabase()
            
            if let dst = _instance!.copyToSandboxDocuments(){
                sqlite3_open(dst, &_db)
            }
        }
    _return _instance!
    }
}

    func copyToSandboxDocuments(){
        let fm = FileManager.default
        let src = Bundle.main.path(forResource: "mydb", ofType: "sqlite")
        let dst = NSHomeDirectory() + "/Documents/mydb.sqlite"
        
        if !fm.fileExists(atPath: dst){
            try! fm.fileExists(atPath: dst)
        }
        
     
}; c
