//
//  CurrencyTxtField.swift
//  Window-Shop-Stalker
//
//  Created by Quinton Quaye on 10/18/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLBL = UILabel(frame: CGRect(x: 5, y:(frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLBL.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.5873634011)
        currencyLBL.textAlignment = .center
        currencyLBL.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        currencyLBL.layer.cornerRadius = 5.0
        currencyLBL.clipsToBounds = true
        
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLBL.text = formatter.currencySymbol
        addSubview(currencyLBL)
       
    }
    
    // here you will place the codes that you want to visually see in builder in this function...
    override func prepareForInterfaceBuilder(){
        customizeView()
    }
    
    // once the app loads, the info will be loaded to view this way...
    override func awakeFromNib(){
            super.awakeFromNib()
            customizeView()
            
        }

// the customized view that will show specific visuals of the viewController.
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2467288152)
        layer.cornerRadius = 5.0
        clipsToBounds = true
        textAlignment = .center
        textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }
}
