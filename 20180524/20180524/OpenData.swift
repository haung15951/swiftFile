//
//  OpenData.swift
//  20180524
//
//  Created by user on 2018/5/24.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class OpenData: NSObject {
     private var jsonObject: [[String: Any]] = []
     func loadUVIData(){
        let q = DispatchQueue.global()
        //將字串轉為ＳＷＩＦＴ可以接受的形式
        q.async {
            
        
        if let url = URL(string: "http://opendata2.epa.gov.tw/UV/UV.json") {
            
            do{ /*
                 let jsonString = try String(contentsOf: url)
                 print(jsonString)
                 let data = jsonString.data(using: .utf8)
                 */
                let data = try Data(contentsOf: url)
                jsonObject = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [[String:Any]]
               
                }
                //                for p in jsonObject{
                //                    if p["County"]is String ,p["SiteName"]is String,p["UVI"] is String{
                //                        let county = p["County"] as! String
                //                        let siteName = p["SiteName"] as! String
                //                        let uvi = p["UVI"] as! String
                //                        if county == "臺中市",siteName=="臺中"{
                //                            print("\(county)的紫外線指數為\(uvi)")
                //                            break
                //                        }
                //                    }
                //
                //                }
            };catch{
                print(error)
                self.stop = true
            }
            } as! @convention(block) () -> Void
        }
    }
    func setDelegate(_ vc:ViewController){

        
        let q = DispatchQueue.global()
        q.async {
            while self.jsonObject.count == 0, self.stop != true{
                sleep(1)
            }
            DispatchQueue.main.async {
                vc.資料準備好請通知我()
            }
        }
}
while getJsonObject.count == 0{
            
        }
        self.vc.資料準備好請通知我()
    }
    func getJsonObject() -> [[String:Any]]{
        return jsonObject
    }
}
