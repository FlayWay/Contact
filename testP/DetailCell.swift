//
//  DetailCell.swift
//  testP
//
//  Created by ljkj on 2018/6/25.
//  Copyright © 2018年 ljkj. All rights reserved.
//

import UIKit

class DetailCell: UITableViewCell {

    var nameTF:UITextField?
    var phoneTF:UITextField?
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = .none
        self.nameTF = UITextField(frame: CGRect(x: 16, y: 12, width: 200, height: 50), placeholder: "请输入姓名", fontSize: 14)
        self.contentView.addSubview(self.nameTF!)
        
        self.phoneTF = UITextField(frame: CGRect(x: 16, y: 72, width: 200, height: 50), placeholder: "请输入电话", fontSize: 14)
        self.contentView.addSubview(self.phoneTF!)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
