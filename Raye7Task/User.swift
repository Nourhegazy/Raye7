//
//  User.swift
//  Raye7Task
//
//  Created by Ahmed Seleem on 6/5/17.
//  Copyright © 2017 Ahmed Seleem. All rights reserved.
//

import Foundation
import ObjectMapper

class User: Mappable
{
var userID: Int?
var ID: Int?
var title: String?
var body: String?

required init?(map: Map)
{    
}

func mapping(map: Map)
{
    userID <- map["userId"]
    ID <- map["id"]
    title <- map["title"]
    body <- map["body"]
}

}
