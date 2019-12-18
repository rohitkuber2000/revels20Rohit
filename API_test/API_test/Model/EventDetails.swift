//
//  EventDetails.swift
//  API_test
//
//  Created by Rohit Kuber on 17/12/19.
//  Copyright © 2019 Rohit Kuber. All rights reserved.
//

import Foundation
//This procures the data from the internet
enum detailError: Error{
    case noDataAvailable
    case canNotProcessData
}
struct  EventDetails {

    let resourceURL: URL
    init(){
    let eventURL = "https://api.techtatva.in/events"
    guard let rURL = URL(string: eventURL) else {
    fatalError()
    }
    
    self.resourceURL = rURL
    }
    
    func getDetails(completion: @escaping(Result<[EventData], detailError>)->Void){
        let dataTask = URLSession.shared.dataTask(with: resourceURL){ data, _ , _ in
            guard let jsonData = data else{
                completion(.failure(.noDataAvailable))
                return
            }
        
        do{
            let decoder = JSONDecoder()
            print("rohit")
            let eventResponse = try decoder.decode(Data.self, from: jsonData) //code stops working here
//            print("Kuber")
            let EventDatas = eventResponse.Data
            completion(.success(EventDatas))
        }catch{
            completion(.failure(.canNotProcessData))
        }

    }
    dataTask.resume()
              
}
}
