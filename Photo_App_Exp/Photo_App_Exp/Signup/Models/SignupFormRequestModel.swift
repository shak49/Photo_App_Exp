//
//  SignupFormRequestModel.swift
//  Photo_App_Exp
//
//  Created by Shak Feizi on 7/25/22.
//

import UIKit


struct SignupFormRequestModel: Encodable {
    let firstName: String
    let lastName: String
    let email: String
    let password: String
}
