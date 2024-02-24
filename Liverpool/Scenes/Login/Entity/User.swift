//
//  User.swift
//  Liverpool
//
//  Created by Carlos Paredes León on 23/02/24.
//

import Foundation

protocol UserProtocol {
    var name: String { get }
    var email: String { get }
}

struct UserConstants {
    static let name = "name"
    static let email = "email"
}

struct User: UserProtocol {
    
    var name: String = ""
    var email: String = ""
    
    init(dict: [String : Any]) {
        
        if let name = dict[UserConstants.name] as? String {
            self.name = name
        }
                
        if let email = dict[UserConstants.email] as? String {
            self.email = email
        }
    }
}

