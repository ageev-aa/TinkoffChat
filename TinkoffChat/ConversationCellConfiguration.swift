//
//  ConversationCellConfiguration.swift
//  TinkoffChat
//
//  Created by Александр on 11.03.18.
//  Copyright © 2018 TCS. All rights reserved.
//

import Foundation

protocol ConversationCellConfiguration: class{
    var name: String? {get set}
    var message: String? {get set}
    var date: Date? {get set}
    var online: Bool {get set}
    var hasUnreadMessages: Bool {get set}
}
