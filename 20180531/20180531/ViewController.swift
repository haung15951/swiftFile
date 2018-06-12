//
//  ViewController.swift
//  20180531
//
//  Created by user on 2018/5/31.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var tapGesture: UITapGestureRecognizer!
    let list = ["台北\n基隆\n新北","台中\n豐原","🐉","高雄\n楠梓"]
    var iscollapse = true
    var isSectionCollapse = false

    @IBAction func onTapGesture(_ sender: Any) {
//        print ("hello")
        isSectionCollapse = !isSectionCollapse
        tableView.reloadSections(IndexSet(integer: 0), with: .automatic)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    // MARK: - 第一階段對話
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    // MARK: 第二階段對話
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (isSectionCollapse) ? 0 : list.count
    }
    // MARK: 第三階段對話
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" ,for:indexPath)
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = list [indexPath.row]
        return cell
    }
    // MARK: - 設定儲存格高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 1,iscollapse{
            return 0
        }
        return UITableViewAutomaticDimension
    }
    func tableView(_ tableView: UITableView,titleForHeaderInSection section: Int) -> String? {
        return "行政區"
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let v = view as! UITableViewHeaderFooterView
       
        v.textLabel?.textAlignment = .center
        v.contentView.addGestureRecognizer(tapGesture)
    }
    // MARK: 得知使用者點選的儲存格
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 2 {
        
            iscollapse = !iscollapse
            tableView.reloadData()
//            cell?.frame = frame!
            tableView.beginUpdates()
            tableView.endUpdates()
        }
    }
    // MARK: -
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

