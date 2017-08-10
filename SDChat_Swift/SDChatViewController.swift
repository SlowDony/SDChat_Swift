//
//  SDChatViewController.swift
//  SDChat_Swift
//
//  Created by slowdony on 2017/8/6.
//  Copyright © 2017年 slowdony. All rights reserved.
//

import UIKit
//聊天列表

class SDChatViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    let sdMainWidth = UIScreen.main.bounds.size.width
    let sdMainHeight = UIScreen.main.bounds.size.height
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "我的对话"
        view.backgroundColor = UIColor.white
        self .setUI()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUI() {
        let chatTable = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: sdMainWidth, height: sdMainHeight), style: UITableViewStyle.plain)
        chatTable.delegate = self
        chatTable.dataSource = self
        chatTable.separatorStyle = UITableViewCellSeparatorStyle.none
        self.view .addSubview(chatTable)
        
    }
    
    
    //tableview代理
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellID = "cellID"
        let cell  = SDChatTableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: cellID)
        cell.nameLab.text = "dany"
        cell.timeLab.text = "2017-09-10"
        cell.contentLab.text = "说话,你再干嘛"
        return cell
   
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
