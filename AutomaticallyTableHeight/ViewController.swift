//
//  ViewController.swift
//  AutomaticallyTableHeight
//
//  Created by RAHUL on 4/12/17.
//  Copyright © 2017 RAHUL. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var chatTableBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var chatTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        chatTableView.estimatedRowHeight = 1000
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell : WatsonChatViewCell!
        
        if (cell == nil) {
            cell = (tableView.dequeueReusableCell(withIdentifier: "WatsonChatViewCell") as? WatsonChatViewCell)!
        }
        cell.selectionStyle = UITableViewCellSelectionStyle.none

        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        
        return 200//UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

