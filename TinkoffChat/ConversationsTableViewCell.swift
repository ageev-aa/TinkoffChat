//
//  ConversationsTableViewCell.swift
//  TinkoffChat
//
//  Created by Александр on 11.03.18.
//  Copyright © 2018 TCS. All rights reserved.
//

import UIKit

class ConversationsTableViewCell: UITableViewCell, ConversationCellConfiguration {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var lastMessageLabel: UILabel!
    
    var name: String? {
        didSet {
            nameLabel.text = name
        }
    }
    
    var message: String? {
        didSet {
            lastMessageLabel.text = message
        }
    }
    
    var online: Bool = true {
        didSet {
            self.backgroundColor = online ? #colorLiteral(red: 0.9738112092, green: 0.9553682208, blue: 0.5330520868, alpha: 0.4192618534) : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    var date: Date? {
        didSet {
            if let unwrappedDate = date {
                let today = Calendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: Date())!
                let formatter = DateFormatter()
                formatter.locale = Locale(identifier: "ru_RU")
                formatter.dateFormat = unwrappedDate < today ? "dd MMM HH:mm" : "HH:mm"
                dateLabel.text = formatter.string(from: unwrappedDate)
            }
        }
    }
    
    var hasUnreadMessages: Bool = false{
        didSet {
            if hasUnreadMessages {
                lastMessageLabel.font = UIFont.boldSystemFont(ofSize: 15.0)
            }
        }
    }
    
    func configureCell(configuration: ConversationCellConfiguration) {
        self.name = configuration.name
        self.message = configuration.message
        self.date = configuration.date
        self.online = configuration.online
        self.hasUnreadMessages = configuration.hasUnreadMessages
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
