//
//  DropShadow.swift
//  TacoPOP
//
//  Created by 小林 泰 on 2017/03/13.
//  Copyright © 2017年 TokyoIceHockeyChannel. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {
    func addDropShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
}
