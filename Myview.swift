//
//  Myview.swift
//  Hello,Drawing
//
//  Created by Musipatla,Hyndavi on 4/9/19.
//  Copyright © 2019 Musipatla,Hyndavi. All rights reserved.
//

import UIKit

class Myview: UIView {

    var points:[CGPoint] = []
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        if points.count == 0{
            return}
        let path = UIBezierPath()
        path.move(to:points[0])
        for pt in points {
            path.addLine(to: pt)
        }
        path.stroke()
        // Drawing code
            //let path = UIBezierPath()
            //path.move(to: CGPoint(x: 200.0, y: 50.0))
            //path.addLine(to: CGPoint(x: 20.0, y: 150.0))
            //path.addLine(to: CGPoint(x: 5.0, y: 30.0))
            //path.close()
            //UIColor.red.setStroke()
            //UIColor.green.setFill()
            //path.lineWidth = 5.0
            //path.stroke()
            //path.fill()
        }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        points.append((touch?.location(in:self))!)
        print("Began: \(String(describing: touch?.location(in:self)))")
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        points.append((touch?.location(in:self))!)
        print("Moved: \(String(describing: touch?.location(in:self)))")
        setNeedsDisplay()
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        points.append((touch?.location(in:self))!)
        print("Ended: \(String(describing: touch?.location(in:self)))")
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        print("Cancelled: \(String(describing: touch?.location(in:self)))")
        
        //vbn
    }
    }
 
