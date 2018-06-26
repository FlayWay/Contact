//
//  CarModel.swift
//  testP
//
//  Created by ljkj on 2018/6/20.
//  Copyright © 2018年 ljkj. All rights reserved.
//

import UIKit

/**
 1. 给自己的属性分配空间并且设置初始值
 2. 调用父类的构造函数，给父类的属性分配空间设置初始值
    NSobject 没有属性，只有一个成员变量 isa
 */

// Class 'CarModel' has no initializers
// CarModel没有初始化器，构造函数，可以有多个，默认是init
class CarModel: NSObject {

    var clpp:String
    
    // Overriding declaration requires an 'override' keyword
    // 重写  ->  父类有这个方法，子类需要重写实现，需要 override 关键字
    
    // Property 'self.clpp' not initialized at implicitly generated super.init call
    // implicitly(隐式生成的 super.init)调用父类的构造函数之前 属性 self.clpp 没有被初始化
    
    override init() {
    
        // Property 'self.clpp' not initialized at super.init call
        // 在调用父类 super.init的时候，没有给self.clpp初始化 -> 分配空间,设置初始值
       clpp = "宝马"
        super.init()
        
        // clpp = "宝马"
        
    }
    
    
}
