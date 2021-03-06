//
//  SDChatListViewController.swift
//  SDChat_Swift
//
//  Created by slowdony on 2017/8/6.
//  Copyright © 2017年 slowdony. All rights reserved.
//

import UIKit

class SDChatListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        navigationItem.title = "对话"
        
        self .setUI()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let chatvc = SDChatViewController()
        navigationController?.pushViewController(chatvc, animated: true)
    }

    func setUI() {
        
        let tableView = UITableView(frame:view.frame)
        tableView.backgroundColor = UIColor.clear
        tableView.delegate=self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.register(SDChatListTableViewCell.self, forCellReuseIdentifier: "cellid")
        self.view .addSubview(tableView)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = SDChatListTableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cellid")
        
        cell.titleLab.text = "dany最性感最有智慧"
        cell.detailLab.text = "haha"
        cell.timeLab.text = "2017-09-09"
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let sdvc = SDChatViewController()
        
        navigationController?.pushViewController(sdvc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
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
