//
//  ContentView.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 06/07/2022.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var wrongemail = 0
    @State private var wrongPassword = 0
    @State private var userIsLoggedIn = false
   
    
    
    var body: some View {
        
        
        if userIsLoggedIn {
            NavigationMenu()
        } else {
            content
        }
        
    }
    
    var content: some View {
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
                    TextField("Username", text: $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05 ))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongemail))
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05 ))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    Button("Login") {
                        login()
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.green)
                    .cornerRadius(10)
                    NavigationLink(destination: ContentViewregister()) {
                        Text("Create Account")
                            .padding(.top)
                            .foregroundColor(.black)
                    }
                }
                .onAppear {
                    Auth.auth().addStateDidChangeListener {
                        auth, user in  if user != nil {
                            userIsLoggedIn.toggle()
                        }
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) {
            result, error in if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
    
}
         
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentViewregister : View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var wrongemail = 0
    @State private var wrongPassword = 0
    
    var body: some View{
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
                TextField("Email", text: $email)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05 ))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongemail))
                SecureField("Password", text: $password)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05 ))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongPassword))
                Button("Login") {
                    register()
                }
                .foregroundColor(.white)
                .frame(width: 300, height: 50)
                .background(Color.green)
                .cornerRadius(10)
            }
        }.navigationBarHidden(true)
    }
    
    func register() {
        Auth.auth().createUser(withEmail: email, password: password) {
            result, error in if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
}
