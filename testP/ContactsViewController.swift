//
//  ContactsViewController.swift
//  testP
//
//  Created by ljkj on 2018/6/25.
//  Copyright © 2018年 ljkj. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var tableView:UITableView?
    var contactList = [Contact]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "联系人列表"
        let rightNavBar = UIBarButtonItem.init(title: "next", style: .plain, target: self, action: #selector(nextAction))
        navigationItem.rightBarButtonItem = rightNavBar
        setUpUI()
        self.loadData { (list) in
            print(list)
            self.contactList += list
            self.tableView?.reloadData()
        }
        
    }
    
    func setUpUI() -> () {
        
        self.tableView = UITableView(frame: self.view.bounds, style: .plain)
        self.tableView?.dataSource = self
        self.tableView?.delegate = self
        self.tableView?.separatorStyle = .none
        self.tableView?.backgroundColor = UIColor.white
        view.addSubview(self.tableView!)
        self.tableView?.register(ContactViewCell.self, forCellReuseIdentifier: "cellid")
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:ContactViewCell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath) as! ContactViewCell
        let contact = self.contactList[indexPath.row]
        cell.nameLab?.text = "名字\(contact.name ?? "")"
        cell.phoneLab?.text = "电话\(contact.phone ?? "")"
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.contactList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 134
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let contact = self.contactList[indexPath.row]
        let detailVC = DetailViewController()
        detailVC.contact = contact
        detailVC.completionCallBack = {
            self.tableView?.reloadRows(at: [indexPath], with: .automatic)
        }
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    
   @objc func nextAction() ->(){
        print("详情界面")
    
    
        let detailVC = DetailViewController()
        detailVC.completionCallBack = { [weak self] in
            
            guard let p = detailVC.contact else {
                return
            }
            self?.contactList.insert(p, at: 0)
            self?.tableView?.reloadData()
        }
        self.navigationController?.pushViewController(detailVC, animated: true)
    }

    func loadData(completion:@escaping (_ list:[Contact])->()) -> () {
        
        DispatchQueue.global().async {
            print("正在加载中...")
            Thread.sleep(forTimeInterval: 1)
            
            var arrayM = [Contact]()
            for i in 1..<20 {
                
                let p = Contact()
                p.name = "name - \(i)"
                p.phone = "1860"+String(format: "%06d", arc4random_uniform(100000))
                arrayM.append(p)
            }
            DispatchQueue.main.async {
            
                completion(arrayM)
            }
            
        }
    }

    

}



