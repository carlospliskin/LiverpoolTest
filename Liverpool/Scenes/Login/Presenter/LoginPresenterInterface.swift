//
//  LoginPresenterInterface.swift
//  Liverpool
//
//  Created by Carlos Paredes León on 23/02/24.
//

import Foundation

enum LoginState {
    case success(user: UserViewModel)
    case error(message: String)
    case validating
    case idle
}

struct UserViewModel {
    var username: String = ""
    var greeting: String = ""
    
    init(with user: UserProtocol) {
        username = user.name 
    }
    
    var completeGreeting: String {
        return greeting + " " + username
    }
}

typealias LoginViewStateBlock = (LoginState) -> Void

protocol LoginPresenterInterface: class {
    
    var usernamePlaceHolder: String { get }
    var loginStateBlock: LoginViewStateBlock? { get set }
    
}
