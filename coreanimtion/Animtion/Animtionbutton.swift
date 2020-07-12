//
//  Animtionbutton.swift
//  coreanimtion
//
//  Created by Mohamed on 7/10/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    func pluse(){
        let pluse = CASpringAnimation(keyPath: "transform.scale")
        pluse.duration = 0.6
        pluse.repeatCount = 1
        pluse.autoreverses = true
        pluse.fromValue = 0.95
        pluse.toValue =  1.0
        pluse.damping = 1.0
        pluse.initialVelocity = 0.5
        
        self.layer.add(pluse, forKey:nil)
            
    }
    func flash() {
        
          let flash = CABasicAnimation(keyPath: "opacity")
              flash.duration = 0.5
              flash.fromValue = 1
              flash.toValue = 0.1
        flash.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
              flash.autoreverses = true
              flash.repeatCount = 1
              
              layer.add(flash, forKey: nil)
    }
    
    func shake() {
        
        
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.05
        shake.repeatCount = 5
        shake.autoreverses = true
        shake.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 7, y: self.center.y))
        shake.toValue =  NSValue(cgPoint: CGPoint(x: self.center.x + 7, y: self.center.y))
        
         layer.add(shake, forKey: nil)
        
        
        
        
        
        
    }
    
    
    
    
    
}
