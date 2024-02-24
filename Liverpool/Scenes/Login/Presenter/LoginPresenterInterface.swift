//
//  LoginPresenterInterface.swift
//  Liverpool
//
//  Created by Carlos Paredes León on 23/02/24.
//

import Foundation

protocol LoginPresenterInterface: class {
    
    var usernamePlaceHolder: String { get }
    var loginStateBlock: LoginViewStateBlock? { get set }
    
}
