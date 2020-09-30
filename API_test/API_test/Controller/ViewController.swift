//
//  ViewController.swift
//  API_test
//
//  Created by Rohit Kuber on 17/12/19.
//  Copyright © 2019 Rohit Kuber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var revEvents = [EventData]()
   
//Doubt here, is this the right way to populate the data of the array, 
    override func viewDidLoad() {
        super.viewDidLoad()
       populateData()
}
    
    func populateData(){
        EventDetails.shareInstance.getDetails{ [weak self] result in
                  switch result{
                  case  .failure(let error):
                        print(error)
                  case .success(let details):
                      self?.revEvents = details
              }
              
          }
        tableView.reloadData()
        
    }
}
extension ViewController : UITableViewDataSource ,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return revEvents.count
    }
//   I wanted to use the next method , to fill the cell entries but I am unable to figure out the error
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "revelCategories") as! EventCell

        let eventInfo = revEvents[indexPath.row]
//        print("Hello world") code is not reaching here
        cell.setDetails( eventInfo : eventInfo)
//        print("thor")
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let eventInfo = revEvents[indexPath.row]
        print(eventInfo.id)
        print(eventInfo.category)
    }
    
    
    
}

