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
        tableView.backgroundColor = UIColor.green
        tableView.delegate=self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        self.view .addSubview(tableView)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 19
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "韦丹妮最漂亮"
        cell.textLabel?.textColor = UIColor.black
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sdvc = SDChatViewController()
        navigationController?.pushViewController(sdvc, animated: true)
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
