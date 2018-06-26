//
//  ContactViewCell.swift
//  testP
//
//  Created by ljkj on 2018/6/25.
//  Copyright © 2018年 ljkj. All rights reserved.
//

import UIKit

class ContactViewCell: UITableViewCell {

    
    var nameLab:UILabel?
    var phoneLab:UILabel?
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = .none
        self.nameLab = UILabel()
        self.nameLab?.frame = CGRect(x: 16, y: 12, width: 200, height: 50)
        self.contentView.addSubview(self.nameLab!)
        
        self.phoneLab = UILabel()
        let maxY = nameLab?.frame.maxY
        self.phoneLab?.frame = CGRect(x: 16, y: maxY!+10.0, width: 200.0, height: 50.0)
        self.contentView.addSubview(self.phoneLab!)
        
        let lineView:UIView = UIView(frame: CGRect(x: 0, y: 133, width: UIScreen.main.bounds.width, height: 1))
        lineView.backgroundColor = UIColor.gray
        self.contentView.addSubview(lineView)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
