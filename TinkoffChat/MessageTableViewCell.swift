//
//  MessageTableViewCell.swift
//  TinkoffChat
//
//  Created by Александр on 15.03.18.
//  Copyright © 2018 TCS. All rights reserved.
//

import UIKit

class MessageTableViewCell: UITableViewCell, MessageCellConfiguration {
    
    @IBOutlet weak var outgoingMessageView: UIView!
    
    @IBOutlet weak var outgoingMessageLabel: UILabel!
    @IBOutlet weak var incomingMessageLabel: UILabel!
    @IBOutlet weak var incomingMessageView: UIView!
    
    var messageText: String? {
        didSet{
            
        }
    }
    
    var isIncoming: Bool = false {
        didSet {
            if isIncoming {
                incomingMessageView.backgroundColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1.0)
                incomingMessageView.layer.cornerRadius = 20
                self.incomingMessageLabel.text = messageText
                outgoingMessageView.removeFromSuperview()
            } else{
                outgoingMessageView.backgroundColor = UIColor(red: 0.3, green: 0.6, blue: 1.0, alpha: 1.0)
                outgoingMessageView.layer.cornerRadius = 20
                self.outgoingMessageLabel.text = messageText
                incomingMessageView.removeFromSuperview()
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    func configureCell(configuration: MessageCellConfiguration) {
        self.messageText = configuration.messageText
        self.isIncoming = configuration.isIncoming
    }
    
    func heightForView(text:String, font:UIFont, width:CGFloat) -> CGFloat {
        let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = font
        label.text = text
        label.sizeToFit()
        return label.frame.height
    }
}
