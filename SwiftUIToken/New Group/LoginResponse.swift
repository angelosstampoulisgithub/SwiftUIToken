//
//  LoginResponse.swift
//  SwiftUIToken
//
//  Created by Angelos Staboulis on 15/2/26.
//

import Foundation
struct LoginResponse: Codable {
    let accessToken: String
    let refreshToken: String
    let id: Int
    let username: String
    let email: String
    let firstName: String
    let lastName: String
    let gender: String
    let image: String
}

  
