//
//  ConversationModel.swift
//  TinkoffChat
//
//  Created by Александр on 11.03.18.
//  Copyright © 2018 TCS. All rights reserved.
//

import Foundation

class ConversationModel: ConversationCellConfiguration {
    var name: String?
    var message: String?
    var date: Date?
    var online: Bool
    var hasUnreadMessages: Bool
    
    init(name: String?, message: String?, date: Date?, online: Bool, hasUnreadMessages: Bool) {
        self.name = name
        self.message = message
        self.date = date
        self.online = online
        self.hasUnreadMessages = hasUnreadMessages
    }
    
    static func generateRandomDate(daysBack: Int) -> Date? {
        let day = arc4random_uniform(UInt32(daysBack))+1
        let hour = arc4random_uniform(23)
        let minute = arc4random_uniform(59)
        let today = Date(timeIntervalSinceNow: 0)
        let gregorian  = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)
        var offsetComponents = DateComponents()
        offsetComponents.day = -Int(day - 1)
        offsetComponents.hour = -Int(hour)
        offsetComponents.minute = -Int(minute)
        
        let randomDate = gregorian?.date(byAdding: offsetComponents, to: today, options: .init(rawValue: 0) )
        return randomDate
    }
    
    
    static var onlineConversations: [ConversationModel] {
        get {
            var conversations = [ConversationModel]()
            
            conversations.append(ConversationModel(name: "Саша", message: "Привет", date: generateRandomDate(daysBack: 2), online: true, hasUnreadMessages: false))
            
            conversations.append(ConversationModel(name: "Дима", message: "Как дела?", date: generateRandomDate(daysBack: 2), online: true, hasUnreadMessages: true))
            
            conversations.append(ConversationModel(name: "Катя", message: "Добрый вечер!", date: generateRandomDate(daysBack: 2), online: true, hasUnreadMessages: true))
            
            conversations.append(ConversationModel(name: "Денис", message: "И тебе", date: generateRandomDate(daysBack: 2), online: true, hasUnreadMessages: false))
            
            conversations.append(ConversationModel(name: "Миша", message: "Спокойной ночи! Спокойной ночи!Спокойной ночи!Спокойной ночи!", date: generateRandomDate(daysBack: 2), online: true, hasUnreadMessages: false))

            return conversations
        }
    }
    
    static var historyConversations: [ConversationModel] {
        get {
            var conversations = [ConversationModel]()
            
            conversations.append(ConversationModel(name: "Олег", message: "Привет", date: generateRandomDate(daysBack: 2), online: false, hasUnreadMessages: false))
            
            conversations.append(ConversationModel(name: "Костя", message: "Как дела?", date: generateRandomDate(daysBack: 2), online: false, hasUnreadMessages: true))
            
            conversations.append(ConversationModel(name: "Антон", message: "Добрый вечер!", date: generateRandomDate(daysBack: 2), online: false, hasUnreadMessages: true))
            
            conversations.append(ConversationModel(name: "Лера", message: "И тебе", date: generateRandomDate(daysBack: 2), online: false, hasUnreadMessages: false))
            
            conversations.append(ConversationModel(name: "Ирина", message: "Спокойной ночи!", date: generateRandomDate(daysBack: 2), online: false, hasUnreadMessages: false))
            
            return conversations
        }
    }
    
    
    
    
    
    

    

}
