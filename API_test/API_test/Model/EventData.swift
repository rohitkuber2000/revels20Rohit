//
//  EventData.swift
//  API_test
//
//  Created by Rohit Kuber on 17/12/19.
//  Copyright © 2019 Rohit Kuber. All rights reserved.
//

import Foundation
//This is to store  the hierarchical form of Json data

struct  Eventresp: Decodable {
    var success: Bool
    var data: [EventData]?
}

struct EventData: Decodable{
    var name: String
    var shortDesc: String
    var maxTeamSize: Int
    var delCardType: Int
    var category: Int
    var id: Int
}
