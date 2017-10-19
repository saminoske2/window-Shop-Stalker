//
//  wage.swift
//  Window-Shop-Stalker
//
//  Created by Quinton Quaye on 10/18/17.
//  Copyright © 2017 Quinton Quaye. All rights reserved.
//

import Foundation
class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int{
        return Int(ceil(price / wage))
    }
}
