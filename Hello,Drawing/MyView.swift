//
//  MyView.swift
//  Hello,Drawing
//
//  Created by Musipatla,Hyndavi on 4/9/19.
//  Copyright © 2019 Musipatla,Hyndavi. All rights reserved.
//

import UIKit

class MyView: UIView {

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 200.0, y: 50.0))
        path.addLine(to: CGPoint(x: 20.0, y: 150.0))
        path.addLine(to: CGPoint(x: 5.0, y: 30.0))
        path.close()
        UIColor.red.setStroke()
         UIColor.green.setFill()
        path.lineWidth = 5.0
        path.stroke()
        path.fill()
    }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


