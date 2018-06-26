//
//  UITextField+extentsion.swift
//  testP
//
//  Created by ljkj on 2018/6/25.
//  Copyright © 2018年 ljkj. All rights reserved.
//

import UIKit

// extension 类似与oc中的category

extension UITextField {
    
    convenience init(frame:CGRect,placeholder:String,fontSize:CGFloat) {
        
        // 实例化当前函数
        self.init(frame:frame)
        
        // 访问属性
        self.borderStyle = .roundedRect
        self.placeholder = placeholder
        self.font = UIFont.systemFont(ofSize: fontSize)
    }
    
}
