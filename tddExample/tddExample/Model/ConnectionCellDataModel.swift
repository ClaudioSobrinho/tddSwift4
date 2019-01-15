//
//  ConnectionCellDataModel.swift
//  tddExample
//
//  Created by Claudio Sobrinho on 1/15/19.
//  Copyright © 2019 Claudio Sobrinho. All rights reserved.
//

import Foundation

struct ConnectionCellDataModel: Equatable {
    var from: String
    var to: String
    var lat: String
    
    init(connection: Connection) {
        from = connection.from ?? ""
        to = connection.to ?? ""
        lat = connection.lat?.description ?? "0.0"
    }
}
