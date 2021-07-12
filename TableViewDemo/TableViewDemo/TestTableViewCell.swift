//
//  TestTableViewCell.swift
//  TableViewDemo
//
//  Created by VPJacob on 2021/7/12.
//

import UIKit

class TestTableViewCell: UITableViewCell {

    let width:CGFloat = UIScreen.main.bounds.width
    var userLable:UILabel!
    var birthdayLable:UILabel!
    var sexLable:UILabel!
    var iconImv :UIImageView!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        iconImv = UIImageView(frame: CGRect(x: 20, y: 15, width: 44, height: 44))
        iconImv.layer.masksToBounds = true
        iconImv.layer.cornerRadius = 22
        
        userLable = UILabel(frame: CGRect(x: 74, y: 18, width: 70, height: 15))
        userLable.textColor = .black
        userLable.font = UIFont.boldSystemFont(ofSize: 14)
        userLable.textAlignment = .left
        
        birthdayLable  = UILabel(frame: CGRect(x: 74, y: 49, width: width-94, height: 13))
        birthdayLable.textColor = UIColor.gray
        birthdayLable.font = UIFont.systemFont(ofSize: 13)
        birthdayLable.textAlignment = .left

        sexLable = UILabel(frame: CGRect(x: 150, y: 20, width: 50, height: 13))
        sexLable.textColor = UIColor.black
        sexLable.font = UIFont.systemFont(ofSize: 13)
        sexLable.textAlignment = .left

        
        contentView.addSubview(iconImv)
        contentView.addSubview(sexLable)
        contentView.addSubview(userLable)
        contentView.addSubview(birthdayLable)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        print("xxx")
        // Configure the view for the selected state
    }

}
