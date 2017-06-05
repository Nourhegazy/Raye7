//
//  ViewController+BackendFunction.swift
//  Raye7Task
//
//  Created by Ahmed Seleem on 6/5/17.
//  Copyright © 2017 Ahmed Seleem. All rights reserved.
//

import Foundation
import AlamofireObjectMapper
import Alamofire

extension ViewController
{


    func requestUsersFromBackend(completionHandler: @escaping (_ users: [User])->())
    {
    
        
        let URL = "https://jsonplaceholder.typicode.com/posts"
        
        
        Alamofire.request(URL).responseArray
        {

            (response: DataResponse<[User]>) in
            
            let userArray = response.result.value
            completionHandler(userArray!)
            
            }
        }
    

}
