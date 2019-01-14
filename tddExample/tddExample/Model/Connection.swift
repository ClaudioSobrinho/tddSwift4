//
//  Connection.swift
//  tddExample
//
//  Created by Claudio Sobrinho on 1/14/19.
//  Copyright © 2019 Claudio Sobrinho. All rights reserved.
//

struct Connection {
    
    var from: String?
    var to: String?
    var lat: Double?
    
    init(attributes: [String: Any]) {
        self.from = attributes["from"] as? String
        self.to = attributes["to"] as? String
        if let coordinates = attributes["coordinates"] as? [String : Any], let origin = coordinates["from"] as? [String : Any] {
            self.lat = origin["lat"] as? Double
        }
    }
    
}
