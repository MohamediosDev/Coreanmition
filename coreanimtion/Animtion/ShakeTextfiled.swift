//
//  ShakeTextfiled.swift
//  coreanimtion
//
//  Created by Mohamed on 7/9/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class ShakeTextfiled: UITextField {

    func Shack() {
        
        let animtion = CABasicAnimation(keyPath: "position")
        animtion.duration = 0.05
        animtion.repeatCount = 5
        animtion.autoreverses = true
        animtion.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 7, y: self.center.y))
        animtion.toValue =  NSValue(cgPoint: CGPoint(x: self.center.x + 7, y: self.center.y))
        
        self.layer.add(animtion, forKey: "position")
    
    }
    
    
    
    
    
    

}
