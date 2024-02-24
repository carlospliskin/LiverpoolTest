//
//  SingUseCaseImplementator.swift
//  Liverpool
//
//  Created by Carlos Paredes León on 23/02/24.
//

import Foundation
import UIKit

class SignInCaseUseImplementator: SignInCaseUseProtocol {
    
    let apiRest = APIRest()
    
    func signIn(with username: String, password: String, completion: (UserProtocol?) -> Void) {
        let responseIsOk = username == "" && password == ""
        
        apiRest.makeRequest(shouldGetUser: responseIsOk) { (jsonDict) in
            guard let jsonDict = jsonDict else {
                completion(nil)
                return
            }
            
            let user = User(dict: jsonDict)
            completion(user)
        }
    }
    
}

class APIRest {
    
    typealias JSONSuccessResponseBlock = ([String : Any]?) -> Void
    
    private let successResponse: [String : Any] = [
        "name" : "",
        "email" : ""
    ]
    
    func makeRequest(shouldGetUser: Bool, completion: JSONSuccessResponseBlock) {
        
        completion(shouldGetUser ? successResponse : nil)
    }
}
