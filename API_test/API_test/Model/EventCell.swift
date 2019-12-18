//
//  EventCell.swift
//  API_test
//
//  Created by Rohit Kuber on 17/12/19.
//  Copyright © 2019 Rohit Kuber. All rights reserved.
//

import UIKit
//This is for populating the table cell entries
class EventCell: UITableViewCell {

    @IBOutlet weak var eventName: UILabel!
    
    @IBOutlet weak var shortDescription: UILabel!
    
    
    @IBOutlet weak var mteamSize: UILabel!
    
    
    @IBOutlet weak var delCardT: UILabel!
    
    
    func setDetails(eventInfo: EventData){
       eventName.text = eventInfo.name
      shortDescription.text = eventInfo.shortDesc
        mteamSize.text = "\(eventInfo.maxTeamSize)"
        delCardT.text = "\(eventInfo.delCardType)"
    }
    
    
}
