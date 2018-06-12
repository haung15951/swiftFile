//
//  ViewController.swift
//  20180607
//
//  Created by user on 2018/6/7.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func drawLine()->CAShapeLayer{
         let shapeLayer = CAShapeLayer()
         let LinePath = UIBezierPath()
        LinePath.move(to: CGPoint(x: 0, y: 750))
        LinePath.addLine(to: CGPoint(x: 10, y: 600))
        LinePath.addLine(to: CGPoint(x: 20, y: 500))
        LinePath.addLine(to: CGPoint(x: 30, y: 550))
        LinePath.addLine(to: CGPoint(x: 40, y: 700))
        LinePath.addLine(to: CGPoint(x: 50, y: 660))
        LinePath.addLine(to: CGPoint(x: 60, y: 520))
        LinePath.addLine(to: CGPoint(x: 70, y: 500))
        LinePath.addLine(to: CGPoint(x: 80, y: 550))
        LinePath.addLine(to: CGPoint(x: 90, y: 440))
        LinePath.addLine(to: CGPoint(x: 100, y: 470))
        LinePath.addLine(to: CGPoint(x: 110, y: 550))
        LinePath.addLine(to: CGPoint(x: 120, y: 390))
        LinePath.addLine(to: CGPoint(x: 130, y: 660))
        LinePath.addLine(to: CGPoint(x: 140, y: 520))
        LinePath.addLine(to: CGPoint(x: 150, y: 500))
        LinePath.addLine(to: CGPoint(x: 160, y: 700))
        LinePath.addLine(to: CGPoint(x: 170, y: 660))
        LinePath.addLine(to: CGPoint(x: 180, y: 530))
        LinePath.addLine(to: CGPoint(x: 190, y: 550))
        LinePath.addLine(to: CGPoint(x: 200, y: 750))
        LinePath.addLine(to: CGPoint(x: 210, y: 560))
        LinePath.addLine(to: CGPoint(x: 220, y: 520))
        LinePath.addLine(to: CGPoint(x: 230, y: 570))
        LinePath.addLine(to: CGPoint(x: 240, y: 550))
        LinePath.addLine(to: CGPoint(x: 250, y: 630))
        LinePath.addLine(to: CGPoint(x: 260, y: 500))
        LinePath.addLine(to: CGPoint(x: 270, y: 550))
        LinePath.addLine(to: CGPoint(x: 280, y: 750))
        LinePath.addLine(to: CGPoint(x: 290, y: 350))
        LinePath.addLine(to: CGPoint(x: 300, y: 520))
        LinePath.addLine(to: CGPoint(x: 310, y: 400))
        LinePath.addLine(to: CGPoint(x: 320, y: 550))
        LinePath.addLine(to: CGPoint(x: 330, y: 600))
        LinePath.addLine(to: CGPoint(x: 340, y: 500))
        LinePath.addLine(to: CGPoint(x: 350, y: 550))
        LinePath.addLine(to: CGPoint(x: 360, y: 490))
        LinePath.addLine(to: CGPoint(x: 370, y: 480))
        LinePath.addLine(to: CGPoint(x: 380, y: 460))
        LinePath.addLine(to: CGPoint(x: 390, y: 440))
        LinePath.addLine(to: CGPoint(x: 400, y: 550))
        LinePath.addLine(to: CGPoint(x: 410, y: 600))
        LinePath.addLine(to: CGPoint(x: 420, y: 500))
        LinePath.addLine(to: CGPoint(x: 430, y: 440))
        LinePath.addLine(to: CGPoint(x: 440, y: 370))
        LinePath.addLine(to: CGPoint(x: 450, y: 400))
        LinePath.addLine(to: CGPoint(x: 460, y: 380))
        LinePath.addLine(to: CGPoint(x: 470, y: 440))
        LinePath.addLine(to: CGPoint(x: 480, y: 450))
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = 1
        shapeLayer.path = LinePath.cgPath
        view.layer.addSublayer(shapeLayer)
        return shapeLayer
    }
//    func drawLine() -> CAShapeLayer {
//        let shapeLayer = CAShapeLayer()
//        let LinePath = UIBezierPath()
//        //起點
//        LinePath.move(to:CGPoint(x: 10, y: 10))
//        //畫至某點
//        LinePath.addLine(to: CGPoint(x: 300, y: 200))
//        LinePath.addLine(to: CGPoint(x: 100, y: 250))
//        //形成封閉形狀
//        LinePath.close()
//        shapeLayer.strokeColor = UIColor.red.cgColor
//        shapeLayer.fillColor = UIColor.clear.cgColor
//        //粗細
//        shapeLayer.lineWidth = 20
//        //10為線 3為虛
//        shapeLayer.lineDashPattern = [10,3]
//        //轉角為平
//        shapeLayer.lineJoin = kCALineJoinBevel
//        
//        shapeLayer.path = LinePath.cgPath
//        
//        view.layer.addSublayer(shapeLayer)
//        return shapeLayer
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        view.layer.addSublayer(drawLine())
        //////////// p377 使圖形線能接收點擊
        
    }
        override func prepare(for segue:UIStoryboardSegue , sender: Any?){
            let vc = segue.destination as! circleViewController
            vc.currentvalue = 31
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

