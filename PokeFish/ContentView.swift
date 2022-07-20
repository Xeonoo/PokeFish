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
                    NavigationLink(destination: ContentViewregister()) {
                        Text("Create Account")
                            .padding(.top)
                            .foregroundColor(.black)
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
         
           

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Location {
    static let allLocations = [
        "New York",
        "London",
        "Tokyo",
        "Berlin",
        "Olongapo",
        "Paris"
    ]
}

struct ContentViewregister : View {
     
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var location = ""
    @State private var termsAccepted = false
    @State private var age = 20
 
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Register")) {
                    TextField("Firstname",
                              text: $firstname)
                    TextField("Lastname",
                              text: $lastname)
                    Picker(selection: $location,
                           label: Text("Location")) {
                            ForEach(Location.allLocations, id: \.self) { location in
                                Text(location).tag(location)
                            }
                    }
                     
                    Toggle(isOn: $termsAccepted,
                           label: {
                            Text("Accept terms and conditions")
                    })
                     
                    Stepper(value: $age,
                            in: 18...100,
                            label: {
                        Text("Current age: \(self.age)")
                    })
                     
                    Button(action: {}) {
                        Text("Register")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 220, height: 60)
                            .background(Color.green)
                            .cornerRadius(15.0)
                            .shadow(radius: 5)
                            .border(Color.red, width: 4)
                    }
                    .padding()
                }
            }.navigationBarTitle(Text("Register"))
        }
    }
}
