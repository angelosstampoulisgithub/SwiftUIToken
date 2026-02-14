//
//  AuthViewModel.swift
//  SwiftUIToken
//
//  Created by Angelos Staboulis on 15/2/26.
//

import Foundation
@MainActor
final class AuthViewModel: ObservableObject {
    @Published var token: String?
    @Published var error: String?
    let api:API
    init(api: API) {
        self.api = api
    }
    func login(username: String, password: String) {
        Task {
            do {
               let token = try await api.login(username: username, password: password)
                self.token = token
            } catch {
                self.error = "Login failed"
            }
        }
    }
}
