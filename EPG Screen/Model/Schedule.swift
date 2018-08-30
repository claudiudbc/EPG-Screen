//
//  Schedules.swift
//  EPG Screen
//
//  Created by Claudiu Dobre on 24/08/2018.
//  Copyright © 2018 Claudiu Dobre. All rights reserved.
//

import UIKit

struct Schedules: Codable {
    let title: String?
    let id: String?
    let startDate: String?
    let endDate: String?
    
    enum CodingKeys: String, CodingKey {
        case title
        case id
        case startDate = "start"
        case endDate = "end"
    }
}

