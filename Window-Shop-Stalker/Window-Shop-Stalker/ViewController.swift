//
//  ViewController.swift
//  Window-Shop-Stalker
//
//  Created by Quinton Quaye on 10/18/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var wageTXT: CurrencyTxtField!
    
    @IBOutlet weak var priceTXT: CurrencyTxtField!
    
    @IBOutlet weak var resultLBL: UILabel!
    
    @IBOutlet weak var hoursLBL: UILabel!
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        
        resultLBL.isHidden = true
        hoursLBL.isHidden = true
        wageTXT.text = ""
        priceTXT.text = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLBL.isHidden = true
        hoursLBL.isHidden = true
        
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action:
           
            // will be ran with "objC function later...
    #selector(ViewController.calculate), for: .touchUpInside)
        
        wageTXT.inputAccessoryView = calcBtn
        priceTXT.inputAccessoryView = calcBtn
        resultLBL.isHidden = true
        hoursLBL.isHidden = true
        
    }
// call the "@objc" infront of the function to allw the objectiveC function to run
    @objc func calculate() {
        if let wageTXT = wageTXT.text, let priceTXT = priceTXT.text{
            
            if let wage = Double(wageTXT), let price = Double(priceTXT){
                view.endEditing(true)
                resultLBL.isHidden = false
                hoursLBL.isHidden = false
                resultLBL.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
}

