//
//  ViewController.swift
//  TableViewDemo
//
//  Created by VPJacob on 2021/7/12.
//

import UIKit



class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    static let cellId = "UITableViewCellId"
    var dataSource = [[String:String]()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tableView = UITableView(frame: view.bounds, style: .grouped)
        tableView.backgroundColor = .white
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        dataSource = [
          ["name":"王小明","sex":"男","icon":"imageIcon","birthday":"2017-10-11"],
          ["name":"李磊","sex":"男","icon":"imageIcon","birthday":"2011-12-30"],
          ["name":"韩梅","sex":"女","icon":"imageIcon","birthday":"2014-9-10"],
          ["name":"JIM","sex":"男","icon":"imageIcon","birthday":"2008-10-1"]]
        tableView.reloadData()

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:TestTableViewCell? = tableView.dequeueReusableCell(withIdentifier: ViewController.cellId) as? TestTableViewCell // 不指定类型不能赋值
        
        if cell == nil {
//            cell = UITableViewCell(style: .subtitle, reuseIdentifier: ViewController.cellId)
            cell = TestTableViewCell(style: .subtitle, reuseIdentifier: ViewController.cellId)
        }
//        cell?.textLabel?.text = "标题"
//        cell?.detailTextLabel?.text = "具体内容"
  
        let dic:Dictionary = dataSource[indexPath.row]
        cell?.iconImv.image = UIImage(named: dic["icon"]!)
        cell?.birthdayLable.text = dic["birthday"]
        cell?.userLable.text = dic["name"]
        cell?.sexLable.text = dic["sex"]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }

}

