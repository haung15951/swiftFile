//
//  ViewController.swift
//  20180608
//
//  Created by user on 2018/6/8.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func onClick(_ sender: UIButton) {
        if let text = Text.text{
            send(text)
        }
    }
    var iStream:InputStream? = nil
    var oStream:OutputStream? = nil
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var Text: UITextField!
    
    func receiveData(available:(_ String:String?)->Void){
        var buf = Array(repeating: UInt8(0), count: 1024)
        
        while true {
            if let n = iStream?.read(&buf, maxLength: 1024){
                let data = Data(bytes: buf, count: n)
                let string = String(data: data,encoding: .utf8)
                available (string)
            }
        }
    }
    func send(_ string:String){
        var buf =  Array(repeating: UInt8(0),count:1024)
        let data = string.data(using: .utf8)!
        
        data.copyBytes(to: &buf, count:data.count)
        oStream?.write(buf, maxLength: data.count)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let _ = Stream.getStreamsToHost(withName: "localhost", port: 5001, inputStream: &iStream, outputStream: &oStream)
        
        iStream?.open()
        oStream?.open()
        
        DispatchQueue.global().async {
            self.receiveData(available: {(string) in DispatchQueue.main.async {
                self.Label.text = string
                }
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

