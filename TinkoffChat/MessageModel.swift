//
//  MessageModel.swift
//  TinkoffChat
//
//  Created by Александр on 13.03.18.
//  Copyright © 2018 TCS. All rights reserved.
//

import Foundation

class MessageModel: MessageCellConfiguration {
    var messageText: String?
    var isIncoming: Bool
    
    init(messageText:String?, isIncoming:Bool) {
        self.messageText = messageText
        self.isIncoming = isIncoming
    }
    
    static var messages: [MessageModel]{
        get{
            var _messages = [MessageModel]()
            _messages.append(MessageModel(messageText:"Привет!", isIncoming: false))
            _messages.append(MessageModel(messageText:"Привет)", isIncoming: true))
            _messages.append(MessageModel(messageText:"как дела?!", isIncoming: false))
            _messages.append(MessageModel(messageText:"Отлично, а твои?!", isIncoming: true))
            _messages.append(MessageModel(messageText:"Не плохо)", isIncoming: false))
            _messages.append(MessageModel(messageText:"Какая хорошая погода! \n Какая \n хорошая погода! \n Какая хорошая погода! Какая хорошая погода! Какая хорошая погода!", isIncoming: true))
            _messages.append(MessageModel(messageText:"Да уж", isIncoming: false))
            
            return _messages
        }
    }
}
