//
//  MessageCellConfiguration.swift
//  TinkoffChat
//
//  Created by Александр on 13.03.18.
//  Copyright © 2018 TCS. All rights reserved.
//

import Foundation

protocol MessageCellConfiguration: class{
    var messageText:String? {get set}
    var isIncoming: Bool {get set}
}
