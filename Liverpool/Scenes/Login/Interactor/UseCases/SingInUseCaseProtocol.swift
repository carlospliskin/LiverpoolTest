//
//  SingInUseCaseProtocol.swift
//  Liverpool
//
//  Created by Carlos Paredes León on 23/02/24.
//

import Foundation
import UIKit

typealias UserDataBlock = (_ user: UserProtocol?) -> Void

protocol SignInCaseUseProtocol {
    func signIn(with username: String, password: String, completion: UserDataBlock)
}


