//
//  SDChatTableViewCell.swift
//  SDChat_Swift
//
//  Created by slowdony on 2017/8/10.
//  Copyright © 2017年 slowdony. All rights reserved.
//

import UIKit

class SDChatTableViewCell: UITableViewCell {

    let headImg = UIImageView()
    let nameLab = UILabel()
    let contentImg = UIImageView()
    let contentLab = UILabel()
    let timeLab = UILabel()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = UITableViewCellSelectionStyle.none
        self .setUI()
    }
    func setUI(){
        
        headImg.frame = CGRect.init(x: 10, y: 20, width: 50, height: 50)
        headImg.image = UIImage.init(named: "chatHead")
        self .addSubview(headImg)
        
        nameLab.frame = CGRect.init(x: 65, y: 20, width: 100, height: 20)
        nameLab.textColor = UIColor.black
        nameLab.font = UIFont.systemFont(ofSize: 14)
        self .addSubview(nameLab)
        
        let with  = UIScreen.main.bounds.size.width
        timeLab.frame = CGRect.init(x: 0, y: 0, width: with, height: 20)
        timeLab.textColor = UIColor.gray
        timeLab.textAlignment = NSTextAlignment.center
        timeLab.font = UIFont.systemFont(ofSize: 10)
        self .addSubview(timeLab)
        
        contentLab.frame = CGRect.init(x: 65, y: 40, width: 200, height: 20)
        contentLab.textColor = UIColor.black
        contentLab.font = UIFont.systemFont(ofSize: 15)
        contentLab.layer.cornerRadius = 2
        contentLab.layer.borderColor = UIColor.gray.cgColor
        contentLab.layer.borderWidth = 0.5
        contentLab.layer.masksToBounds = true
        self .addSubview(contentLab)
        
        
    }
}
