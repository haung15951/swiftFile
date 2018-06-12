//
//  circleViewController.swift
//  20180607
//
//  Created by user on 2018/6/7.
//  Copyright © 2018年 jjj. All rights reserved.
//

import UIKit

class circleViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    var currentvalue:CGFloat = 30
    
    func drawCircle(withColor color:CGColor) -> CAShapeLayer{
        
        var radius : CGFloat = 0
        //當螢幕為橫放
        if view.frame.size.width > view.frame.size.height{
            radius = view.frame.size.height / 2 - 20
        }else{
            radius = view.frame.size.width / 2 - 20
        }
        
        
        let shapeLayer = CAShapeLayer()
        //畫圓
        let circlePath = UIBezierPath(
            // 圓心
            arcCenter: CGPoint(x: 150, y: 130),
            //半徑
            radius:radius,
            //從...畫到...
            startAngle: 120 * CGFloat.pi / 180,
            endAngle: 420 * CGFloat.pi / 180,
            clockwise: true)
        
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = 7
        
        shapeLayer.path = circlePath.cgPath
        
        return shapeLayer
    }
    func strokeEndAnimation (to:CGFloat) -> CAKeyframeAnimation {
        let ani = CAKeyframeAnimation(keyPath: "strokeEnd")
        ani.duration = 3
        
        ani.values = [0, to/35.0]
        ani.timingFunctions=[
        CAMediaTimingFunction(
            controlPoints: 0.41, 0.51, 0.48, 0.94)
        ]
//        ani.fromValue = 0
//        ani.toValue =  to / 35.0
        ani.isRemovedOnCompletion = false
        ani.fillMode = kCAFillModeBoth
        ani.repeatCount = 0
        
        return ani
    }

    override func viewDidLoad() {
        super.viewDidLoad()
      
        label.text = "\(Int(currentvalue))/35"
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let bgColor = UIColor(red: 119/255, green: 103/255, blue: 69/255, alpha: 1)
        // Do any additional setup after loading the view.
        let  currentColor = UIColor.white
        
        let currentLayer = drawCircle(withColor: currentColor.cgColor)
        currentLayer.add(strokeEndAnimation(to: currentvalue), forKey: nil)
        view.layer.addSublayer(currentLayer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
