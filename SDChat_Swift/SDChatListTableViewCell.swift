//
//  SDChatListTableViewCell.swift
//  SDChat_Swift
//
//  Created by slowdony on 2017/8/6.
//  Copyright © 2017年 slowdony. All rights reserved.
//

import UIKit

class SDChatListTableViewCell: UITableViewCell {
    let titleLab = UILabel()
    let detailLab = UILabel()
    let headImage = UIImageView()
    
    
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
        self .setUI()
    }
    
    func setUI() {
        titleLab.frame = CGRect.init(x: 80, y: 20, width: 300, height: 20)
        titleLab.backgroundColor = UIColor.clear
        titleLab.textColor = UIColor.black
        titleLab.font = UIFont.systemFont(ofSize: 15)
        
        
        detailLab.frame = CGRect.init(x: 80, y: 40, width: 300, height: 20)
        detailLab.backgroundColor = UIColor.clear
        detailLab.font = UIFont.systemFont(ofSize: 12)
        detailLab.textColor = UIColor.gray
        
        
        let myimage = UIImage.init(named: "chatHead")
        headImage.frame = CGRect.init(x: 20, y: (70-50)/2 , width: 50, height: 50)
        
        headImage.layer.cornerRadius = 25
        headImage.layer.masksToBounds = true
        
        headImage.image = myimage
        
        self .addSubview(titleLab)
        self .addSubview(detailLab)
        self .addSubview(headImage)
        
    }

}
