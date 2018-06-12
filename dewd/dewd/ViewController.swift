//
//  ViewController.swift
//  dewd
//
//  Created by user on 2018/6/3.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class ViewController:
UIViewController ,UITableViewDelegate ,UITableViewDataSource {
    let app = UIApplication.shared.delegate as! AppDelegate
    var jsonObject:[[String:Any]] = []
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jsonObject.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    jsonObject = app.uviData.getjsonObject
    
    let item = jsonObject[IndexPath.row]
    var county:String = "未知"
    var sitename:String = "未知"
    var uvi:String = "未知"
    
    cell.backgroundColor = .white
    cell.imageView?.image = nil
    cell.textLabel?.textColor = .black
    cell.detailTextLabel?.textColor = cell.textLabel?.textColor
    
    if item["County"] is String {
    county = item["County"] as! String
    }
    if item["SiteName"] is String {
    siteName = item["SiteName"] as! String
    }
    if item["UVI"] is String {
    uvi = item["UVI"] as! String
    cell.backgroundColor = getCellBGColorByUVI(Float(uvi), cell: cell)
    }
    
    cell.textLabel?.text = county + "/" + siteName
    cell.detailTextLabel?.text = uvi
    
    return cell
}
        
    
func getCellBGColorByUVI(_ value: Float?, cell: UITableViewCell) -> UIColor {
    var color: UIColor = .white
    
    guard let value = value else {
        return color
    }
    
    switch value {
    case 0..<3:
        color = UIColor(red: 46/255, green: 148/255, blue: 23/255, alpha: 1)
        
    case 3..<6:
        color = UIColor(red: 246/255, green: 226/255, blue: 50/255, alpha: 1)
        
    case 6..<8:
        color = .orange
        
    case 8..<11:
        color = UIColor(red: 214/255, green: 10/255, blue: 38/255, alpha: 1)
        cell.imageView?.image = UIImage(named: "red")
        cell.textLabel?.textColor = UIColor.white
        cell.detailTextLabel?.textColor = cell.textLabel?.textColor
        
    case 11..<100:
        color = .purple
        
    default:
        break
    }
    
    return color
}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }




