//
//  ViewController.swift
//  20180524
//
//  Created by user on 2018/5/24.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit
  //ViewController繼承UIViewController且符合UITableViewDataSource,UITableViewDelegate兩協定規範
class ViewController: UIViewController ,UITableViewDataSource ,UITableViewDelegate {
    
    @IBOutlet weak var activity: UIActivityIndicatorVie ; UIActivityIndicatorView!
    let app = UIApplication.shared.delegate as! AppDelegate
    @IBOutlet weak var onRefresh;(_ sender: Any){
      tableView.alpha = 0
      refreshBn.isEnabled = false
      activity.startAnimating()
    
      app.uviData.clearJsonObject()
      app.uviData.loadUVIData()
      app.uviData.setDelegate(self)
    }
    func 資料準備好請通知我(){
        print("data ready")
        jsonObject = app.UviData.getJsonObject()
        TableView.reloadData()
        activity.stopAnimating()
        UIView.animate(withDuration: 0.5, animations){
            self.tableView.alpha = 1
        }
        tableView.isUserInteractionEnable = true
        
        
    }
   //環境變數 Any接收所有型態
    var jsonObject: [[String: Any]] = []
    
    let list = ["台北","台中","高雄"]
    //尚未顯示於螢幕 已經載入
    func loadUVIData(){
        if jsonObject.count == 0{
            loadJsonObject()
        }
        if jsonObject != 0{
            return
        }
        //將字串轉為ＳＷＩＦＴ可以接受的形式
        if let url = URL(string: "http://opendata2.epa.gov.tw/UV/UV.json") {
            
            do{ /*
                 let jsonString = try String(contentsOf: url)
                 print(jsonString)
                 let data = jsonString.data(using: .utf8)
                 */
                let data = try Data(contentsOf: url)
                self.jsonObject = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [[String:Any]]
                DispatchQueue.main.async {
                    self.vc.資料準備好請通知我（）
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
            }catch{
                print(error)
            }
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadUVIData()
        app.uviData.setdelegate(self)
        tableView.alpha = 0
        refreshbn()
    }
    // 需要多少section
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //多少筆資料
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return jsonObject.count
    }
    //哪幾筆資料
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        // 舊的寫法
//        var tmpCell = tableView.dequeueReusableCell(withIdentifier: "Cell")
//
//        if tmp == nil {
//            tmpCell= UITableViewCell(style: .default, reuseIdentifier: "Cell")
//        }

        let item = jsonObject[indexPath.row]
        var county:String="未知"
        var siteName:String="未知"
        var uvi:String="未知"
        
        if item["County"] is String{
            county = item["County"] as! String
        }
        if item["SiteName"] is String{
                siteName = item["SiteName"] as! String
            }
        if item["UVI"] is String{
            uvi = item["UVI"] as! String
            if Float(uvi) != nil{
                
            }
        }
        cell.textLabel?.text = county + "/" + siteName
        cell.detailTextLabel?.text = uvi
        return cell
        }
        
    func getCellBGColorByUV(_ value:Float?, cell:UITableViewCell) -> UIColor{
        var color : UIColor = UIColor.white
        
        guard let value = value else{
            return color
        }
        switch value{
        case 0 ..< 3:
            color = UIColor(red: 46/255, green:148/255,blue:23/255,alpha:1)
        case 3 ..< 6:
            color = UIColor(red: 246/255, green: 226/255,blue:58/255,alpha:1)
        case 6..<8:
            color = UIColor.orange
        case 8..<11:
            color = UIColor(red: 214/255, green:10/255,blue:38/255,alpha:1)
        case 11..<100:
            color = UIColor.purple
        default:
            break
        }
        return color
     }
    override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
        func getJsonObject() -> [[String:Any]]{
            return jsonObject
        }
        private func savejsonObject{
            let user 
        }
    }

}

