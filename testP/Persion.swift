//
//  Persion.swift
//  testP
//
//  Created by ljkj on 2018/6/20.
//  Copyright © 2018年 ljkj. All rights reserved.
//

import UIKit

class Persion: NSObject {

    var name:String
    
    // 重写 父类有这个方法
    override init() {
        // 问题：name确实有初始值，但是所有的初始值是 ‘展示’
        self.name = "展示"
        super.init()
        
    }
    
    // 重载 函数名相同，但是参数和个数不同
    // 可以给自己的属性从外部设置初始值
    init(name:String) {
        // 使用参数的 name 设置给属性
        self.name = name
        // 调用父类的构造函数
        super.init()
    }
    
}
