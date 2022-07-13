//
//  ContentView.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 06/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.14))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white.opacity(0.09))
                Circle()
                    .scale(1)
                    .foregroundColor(.white)
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05 ))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05 ))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    Button("Login") {
                        autheticateUser(username: username, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.green)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: Text("logged@\(username)"), isActive: $showingLoginScreen) {
                        EmptyView()
                    }
                }
            }
            
            .navigationBarHidden(true)
        }
    }
    func autheticateUser(username: String, password: String) {
        if username.lowercased() == "xeon" {
             wrongUsername = 0
            if password.lowercased() == "abc" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
}
        
//                 register
                    /*NavigationLink(destination: Register()) {
                            Text("register")
                        }*/
           

//        About fish
     /*   ZStack {
            VStack {
                HStack {
                    Spacer()
                    Text("Date")
                    Spacer()
                    Text("Lenght")
                    Spacer()
                    Text("Weight")
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("25 maj 2000")
                    Spacer()
                    Text("2.5m")
                    Spacer()
                    Text("10Kg")
                    Spacer()
                }
                .padding(.top, 5.0)
                Spacer()
            }
        }
        
        
        
        
        
        
        
        */
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

