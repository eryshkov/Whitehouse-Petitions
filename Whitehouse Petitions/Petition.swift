//
//  Petition.swift
//  Whitehouse Petitions
//
//  Created by Evgeniy Ryshkov on 05/12/2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import Foundation

struct Petition: Codable {
    
    var title: String
    var body: String
    var signatureCount: Int
}
