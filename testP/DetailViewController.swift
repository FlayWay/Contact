//
//  DetailViewController.swift
//  testP
//
//  Created by ljkj on 2018/6/25.
//  Copyright © 2018年 ljkj. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var tableView:UITableView?
    var contact:Contact?
    var completionCallBack:(()->())?
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        let rightBar = UIBarButtonItem.init(title: "保存", style: .plain, target: self, action: #selector(saveAction))
        self.navigationItem.rightBarButtonItem = rightBar
        
        self.tableView = UITableView(frame: self.view.bounds, style: .plain)
        self.tableView?.dataSource = self
        self.tableView?.delegate = self
        self.tableView?.separatorStyle = .none
        view.addSubview(self.tableView!)
        self.tableView?.register(DetailCell.self, forCellReuseIdentifier: "cellId")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:DetailCell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! DetailCell
        cell.nameTF?.text = self.contact?.name ?? ""
        cell.phoneTF?.text = self.contact?.phone ?? ""
        return cell
    }
    
   @objc func saveAction() -> () {
        print("保存数据")
    if contact == nil {
        contact = Contact()
    }
        let index = IndexPath.init(row: 0, section: 0)
        let cell = self.tableView?.cellForRow(at: index) as! DetailCell
        self.contact?.name = cell.nameTF?.text
        self.contact?.phone = cell.phoneTF?.text
        completionCallBack?()
        print("\(cell.nameTF?.text ?? "")-------\(cell.phoneTF?.text ?? "")")
        self.navigationController?.popViewController(animated: true)
    
    }
    
    
}
