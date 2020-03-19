//
//  LogoView.swift
//  Logo
//
//  Created by Nichole Davidson on 3/18/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class LogoView: UIView {

    // MARK: - Properties
    private let logoBgColor = UIColor.red
    private let letterColor = UIColor.white
    private let borderColor = UIColor.red
    private let borderWidth: CGFloat = 2.0
    
    
    
    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.white
    }
 
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    // MARK: - Draw
    
    override func draw(_ rect: CGRect) {
       
        let roundedRectPath = CGPath(roundedRect: rect, cornerWidth: 8.0, cornerHeight: 8.0, transform: nil)
        let path = CGMutablePath()
        let leftCorner = CGPoint(x: rect.minX, y: rect.maxY * 0.65)
        let rightCorner = CGPoint(x: rect.size.width, y: rect.maxY * 0.65)
        let topLeftCorner = CGPoint(x: rect.minX, y: rect.minY)
        let topRightCorner = CGPoint(x: rect.size.width, y: rect.minY)
        let pointCorner = CGPoint(x: rect.midX, y: rect.midY * 2.0)
        
        let letterLeftCorner = CGPoint(x: rect.maxX * 0.20, y: rect.maxY * 0.58)
        let letterRightCorner = CGPoint(x: rect.maxX * 0.80, y: rect.maxY * 0.58)
        let letterTopPoint = CGPoint(x: rect.midX, y: rect.maxY / 6.5)
       
        // inside diagnol up
        
        
        // inside diagnol down
        
        
        
        
        if let context = UIGraphicsGetCurrentContext() {
                               
        // logo background
            context.beginPath()
            context.addPath(roundedRectPath)
            context.setFillColor(letterColor.cgColor)
            context.fillPath()
            
            
        // logo bottom point
           
            context.beginPath()
            context.move(to: leftCorner)
            context.addLine(to: pointCorner)
            context.addLine(to: rightCorner)
            context.setFillColor(logoBgColor.cgColor)
            context.fillPath()
                        
        // logo top portion
            context.beginPath()
            context.move(to: leftCorner)
            context.addLine(to: topLeftCorner)
            context.addLine(to: topRightCorner)
            context.addLine(to: rightCorner)
            context.setFillColor(logoBgColor.cgColor)
            context.fillPath()
            
        // lambda letter - outer
            
            context.beginPath()
            context.move(to: letterLeftCorner)
            context.addLine(to: letterRightCorner)
            context.addLine(to: letterTopPoint)
            context.addLine(to: letterLeftCorner)
            context.setFillColor(letterColor.cgColor)
            context.fillPath()
            
        // lambda letter inner
            
            
            // lambda letter top
        
        
        
    }
    }

}
