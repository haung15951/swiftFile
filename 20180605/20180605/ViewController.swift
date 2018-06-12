//
//  ViewController.swift
//  20180605
//
//  Created by user on 2018/6/5.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UISearchBarDelegate{
    @IBOutlet weak var goforward: UIBarButtonItem!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var goback: UIBarButtonItem!
    
    @IBAction func goback(_ sender: Any) {
        webView.goBack()
    }
    @IBAction func goForward(_ sender: Any) {
        webView.goForward()
    }
    @IBAction func reload(_ sender: Any) {
        webView.reload()
    }
    @IBAction func doHome(_ sender: Any) {
        let url = URL(string: "https://www.apple.com")
        let request = URLRequest(url:url!)
             webView.load(request)
    }
    func webView(_ webView:WKWebView,didCommit navigation:WKNavigation!){
        bnBack.isEnabled = webView.canGoBack
        bnForward.isEnabled = webView.canGoForward
    }
    
    func webView(_ webView:WKWebView, runJavaScriptAlertPannelWithMessage message: String, initiateByFrame frame: print("hi")){
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(okAction)
        
        completionHan
    }
    
//    @IBOutlet weak var SearchBar: UISearchBar!
//
//    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//        let url:String = searchBar.text ?
//        let request = URLRequest(url: searchBar.text)
//        webView.load(request)
    }
//    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
//        print("取消輸入")
//    }
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        print(searchText)
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
//         Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "https://www.apple.com")
        let request = URLRequest(url:url!)
         webView.load(request)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

