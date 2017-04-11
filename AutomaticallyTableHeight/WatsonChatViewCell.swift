//
//  WatsonChatViewCell.swift
//  WatsonDemo
//
//  Created by Etay on 11/13/16.
//  Copyright © 2016 Etay. All rights reserved.
//

import UIKit




class WatsonChatViewCell: UITableViewCell,UITableViewDelegate,UITableViewDataSource {
   // let buttonOptions = KGRadioButton()
    @IBOutlet weak var chatBubbleTableView: UITableView!

    @IBOutlet weak var chatBGvw: UIView!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
//        self.chatBubbleTableView.rowHeight = UITableViewAutomaticDimension
        self.chatBubbleTableView.rowHeight = 100
        chatBubbleTableView.translatesAutoresizingMaskIntoConstraints = false
        //self.chatBubbleTableView.isScrollEnabled = false
        //tableView.backgroundColor = UIColor.white
        //self.chatBubbleTableView.reloadData()
        self.setUpcell()
    }
    
    
    func setUpcell() {
        
    
        chatBubbleTableView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    
        chatBubbleTableView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    
        chatBubbleTableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
    
        chatBubbleTableView.heightAnchor.constraint(greaterThanOrEqualTo: self.chatBubbleTableView.heightAnchor).isActive = true
        
    }
    
    
   // @IBOutlet weak var autoTableView: UITableView!
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return 3
    }
    
    
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var textCell: ChatTextCell!
        var buttonCell : ChatButtonCell!
        
        if indexPath.row == 0 {
            if (textCell == nil) {
                textCell = (tableView.dequeueReusableCell(withIdentifier: "ChatTextCell") as? ChatTextCell)!
            }
            textCell.selectionStyle = UITableViewCellSelectionStyle.none
            textCell.messageLabel.text = "fdsfsdfdsfsdfsdfsdfsdfsdfsdfsdfsdfsfsfsfsdfsdfdsfdsfdsfsdKSADASAADASDASDASdsaFDFDSFDSFSDFEWfwfwefwefewfwwefwefwwfwefwfewfewfewfwefwefwfwefwefewfwefewfwefwefwefwefwefwgrtgregfsvsdfgdscdsfddadfasfefasftewfafewfdfewgwegewrgwegergwegregwwegwrgEND"
            
            return textCell
        }
        else{
            if (buttonCell == nil) {
                buttonCell = (tableView.dequeueReusableCell(withIdentifier: "ChatButtonCell") as? ChatButtonCell)!
            }
            buttonCell.selectionStyle = UITableViewCellSelectionStyle.none
            buttonCell.optionLable.text = "test option"
            buttonCell.buttonOptions?.tag = indexPath.row-1
            
            
            
            
            return buttonCell
        }
        
        
    }
    
    
//    internal func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        
//        
//        return 106.6//UITableViewAutomaticDimension
//    }
    
    
    
    



}



