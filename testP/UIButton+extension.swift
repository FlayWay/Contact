//
//  UIButton+extension.swift
//  testP
//
//  Created by ljkj on 2018/6/25.
//  Copyright © 2018年 ljkj. All rights reserved.
//

import UIKit

extension UIButton {
    
    convenience init(title:String,color:UIColor = UIColor.black) {
        
        self.init()
        self.setTitle(title, for: .normal)
        self.setTitleColor(color, for: .normal)
        self.sizeToFit()
        
    }
    
}
