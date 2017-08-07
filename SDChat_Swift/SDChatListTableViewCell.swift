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
        titleLab.frame = CGRect.init(x: 0, y: 0, width: 300, height: 20)
        titleLab.backgroundColor = UIColor.red
        titleLab.font = UIFont.systemFont(ofSize: 15)
        titleLab.textColor = UIColor.white
        
        detailLab.frame = CGRect.init(x: 0, y: 20, width: 300, height: 20)
        detailLab.backgroundColor = UIColor.blue
        detailLab.font = UIFont.systemFont(ofSize: 12)
        detailLab.textColor = UIColor.white
        self .addSubview(titleLab)
        self .addSubview(detailLab)
        
    }

}
