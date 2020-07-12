//
//  ViewController.swift
//  coreanimtion
//
//  Created by Mohamed on 7/9/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit
class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var labell: UILabel!
    

    @IBOutlet weak var Button: UIButton!
    
    @IBOutlet weak var Button2: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var passwordTf: ShakeTextfiled!
    
    
    @IBOutlet var Citybuttons: [UIButton]!
    
    
    var transview = UIView()
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTf.delegate = self
        Button.layer.cornerRadius = 14
        Button2.layer.cornerRadius = 14
        button3.layer.cornerRadius = 14
        
        
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        passwordTf.Shack()
    }
    
    
    
    @IBAction func animtionbutton(_ sender: UIButton) {
        sender.pluse()
    }
    
    @IBAction func animtion2(_ sender: UIButton) {
        sender.flash()
    }
    
    @IBAction func animtion3(_ sender: UIButton) {
        sender.shake()
    }
    
    
    @IBAction func menubar(_ sender: UIButton) {
        
        transview.backgroundColor = UIColor.black.withAlphaComponent(0.9)
        transview.frame = self.view.frame
        self.view.addSubview(transview)
        
    }
    
    
    
    @IBAction func SelectCountry(_ sender: UIButton) {
        
        Citybuttons.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
                
                
                
            })
        }
         		

    }
    
    enum City:String {
        case egypt = "Egypt"
        case usa = "USA"
        case canada = "Canada"
        case german = "German"
    }
    
    
    
    
    @IBAction func Citybuttonsaction(_ sender: UIButton) {
        
        guard let title = sender.currentTitle ,  let city = City(rawValue: title)  else  {
            
            return
        }
        switch city {
        case .egypt:
            print("Egypt")
            return labell.text = City.egypt.rawValue
        case .usa:
            print("USA")
            return labell.text = City.usa.rawValue
        case .canada:
            print("Canada")
            return labell.text = City.canada.rawValue
        case .german:
            print("German")
            return labell.text = City.german.rawValue
        }
        
        
    }
    
    
}

