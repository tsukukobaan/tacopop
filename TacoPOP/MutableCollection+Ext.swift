//
//  MutableCollection+Ext.swift
//  TacoPOP
//
//  Created by 小林 泰 on 2017/03/13.
//  Copyright © 2017年 TokyoIceHockeyChannel. All rights reserved.
//

import Foundation

extension MutableCollection where Index == Int {
    mutating func shuffle() {
        if count < 2 { return }
        
        for i in startIndex ..< endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}
