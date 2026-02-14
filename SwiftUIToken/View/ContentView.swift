//
//  ContentView.swift
//  SwiftUIToken
//
//  Created by Angelos Staboulis on 15/2/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = AuthViewModel(api: API())

    @State private var username = "emilys"
    @State private var password = "emilyspass"

    var body: some View {
        VStack(spacing: 16) {
            TextField("Email", text: $username)
                .textFieldStyle(.roundedBorder)

            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)

            Button("Login") {
                vm.login( username: username.trimmingCharacters(in: .whitespacesAndNewlines), password: password.trimmingCharacters(in: .whitespacesAndNewlines) )
            }

            if let token = vm.token {
                Text("Token: \(token)")
                    .foregroundColor(.green)
            }

            if let error = vm.error {
                Text(error)
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}
