//
//  ViewController.swift
//  testP
//
//  Created by ljkj on 2018/6/20.
//  Copyright © 2018年 ljkj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "项目"
        
//         let tf1 = UITextField.init(frame: CGRect(x: 0, y: 100, width: 100, height: 50), placeholder: "测试", fontSize: 14)
        
        
        
        
        
        let url = URL(string:"https://www.baidu.com")
        URLSession.shared.dataTask(with: url!){ (data,_,_) in
            
            guard let data = data else {
                print("网络请求失败")
                return
            }
            // 将data转为 string
            let html = String(data: data, encoding: .utf8)
            
            print(html)
            
        }.resume()
        
        
        
        
        
        

        
    }

}

