//
//  Posts.swift
//  looza
//
//  Created by Reuben Ukah on 1/9/17.
//  Copyright © 2017 looza. All rights reserved.
//

import Foundation
import FirebaseDatabase
import UIKit
import Firebase


struct Posts{
    let title:String
    let description: String
    let user: String
    var completed:Bool
    let ref: FIRDatabaseReference?
    let face:String
  
    
    init(user:String,title:String,description:String, face:String,completed: Bool){
    self.user = user
    self.completed = completed
    self.title = title
    self.description = description
    self.ref = nil
    self.face = face
  
        
    
    
    }
    func toAnyObject() -> [AnyHashable:Any] {
        return [
            "user": user,
            "title": title,
            "description": description,
            "completed": completed,
            "face": face
    ] 
    }
    
    
}



