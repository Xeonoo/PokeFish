//
//  MenuView.swift
//  PokeFish
//
//  Created by Maksymilian Patoń on 22/07/2022.
//

import SwiftUI
import Firebase

struct MenuItem: Identifiable {
    var id = UUID()
    let text: String
    let imageName: String
   
}
 
struct MenuContent: View {
    let items : [MenuItem] = [
        MenuItem(text: "Home", imageName: "house"),
        MenuItem(text: "Settings", imageName: "house"),
        MenuItem(text: "Profile", imageName: "person.circle"),
        MenuItem(text: "Deck", imageName: "house")
    ]
    @State var isTapped = false
    
    
    var body: some View {
        NavigationView {
        ZStack {
            Color(UIColor(red: 33/250.0, green: 33/250.0, blue: 33/250.0, alpha: 1))
            VStack(alignment: .leading, spacing: 0) {
                ForEach(items) { item in
                    HStack {
                        Image(systemName: item.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color.green)
                            .frame(width: 30, height: 30, alignment: .center)
                        Text(item.text)
                            .bold()
                            .font(.system(size: 22))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color.white)
                        Spacer()
                    }
                    .padding()
                    Divider()
                }
                Spacer()
            }
            .padding(.top, 25)
            
            VStack {
                Spacer()
                NavigationLink(destination: ContentView()
                    .navigationBarTitle(Text("x"))
                    .navigationBarHidden(true))
                {
                    Text("Logut")
                    Image(systemName: "xmark")
                }
                .foregroundColor(.white)
                .frame(width: 100, height: 50)
                .background(Color.green)
                .cornerRadius(10)
                Button {
                    do {
                    try Auth.auth().signOut()
                    } catch let signOutError as NSError {
                    print("Error signing out: %@", signOutError)
                    }

                } label: {
                    Text("Out")
                }
                .foregroundColor(.white)
                .frame(width: 100, height: 50)
                .background(Color.green)
                .cornerRadius(10)
                
            }
            .padding(.bottom, 20)
        }
        }
    }
}

struct SideMenu: View {
    let width: CGFloat
    let menuOpened: Bool
    let toggleMenu: () -> Void
    
    var body: some View {
        ZStack {
            GeometryReader { _ in
                EmptyView()
            }
            .background(Color.green.opacity(0.15))
            .opacity(self.menuOpened ? 1 : 0)
            .animation(Animation.easeIn.delay(0.15), value: 0.1)
            .onTapGesture {
                self.toggleMenu()
            }
            HStack {
                MenuContent()
                    .frame(width: width)
                    .offset(x: menuOpened ? 0 : -width)
//                    .animation(.default)
                Spacer()
            }
        }
    }
}


struct MenuView: View {
    @State var menuOpened = false
    
    var body: some View {
        NavigationView {
        VStack {
            VStack {
                
//            if !menuOpened {
//                Button {
//                    // add
//                    self.menuOpened.toggle()
//                } label: {
//                    Text("Menu")
//                        .bold()
//                        .foregroundColor(Color.white)
//                        .frame(width: 200, height: 50, alignment: .center)
//                        .background(Color(.systemGreen))
//                        .cornerRadius(10)
//                }
//                .padding(.top, 370.0)
//            }
                if !menuOpened {
                NavigationLink(destination: WeatherView()
                    .navigationBarTitle(Text("x"))
                    .navigationBarHidden(true))
                {
                    Text("Weather")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50, alignment: .center)
                        .background(Color(.systemGreen))
                        .cornerRadius(30)
                }
//                .padding(.top, 30.0)
                .padding(.top, 370.0)
                }
                if !menuOpened {
                NavigationLink(destination: ListView()
                    .navigationBarTitle(Text("x"))
                    .navigationBarHidden(true))
                {
                    Text("Fish")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50, alignment: .center)
                        .background(Color(.systemGreen))
                        .cornerRadius(30)
                }
                .padding(.top, 30.0)
//                .padding(.top, 370.0)
                }
                if !menuOpened {
                NavigationLink(destination: CalendarView()
                    .navigationBarTitle(Text("x"))
                    .navigationBarHidden(true))
                {
                    Text("Calendar")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50, alignment: .center)
                        .background(Color(.systemGreen))
                        .cornerRadius(30)
                }
                .padding(.top, 30.0)
//                .padding(.top, 370.0)
                }
                HStack {
//                    if !menuOpened {
//                        Button {
//                            do {
//                            try Auth.auth().signOut()
//                            } catch let signOutError as NSError {
//                            print("Error signing out: %@", signOutError)
//                            }
//
//                        } label: {
//                            Text("Log out")
//                        }
//                        .foregroundColor(.white)
//                        .frame(width: 100, height: 50)
//                        .background(Color.green)
//                        .cornerRadius(30)
//                    .padding(.top, 30.0)
//                    }
                    if !menuOpened {
                    NavigationLink(destination: ContentView()
                        .task({
                            do {
                            try Auth.auth().signOut()
                            } catch let signOutError as NSError {
                            print("Error signing out: %@", signOutError)
                            }
                        })
                        .navigationBarTitle(Text("x"))
                        .navigationBarHidden(true))
                    {
                        HStack {
                            Text("Log out")
                            Image(systemName: "gobackward")
                        }
                            .foregroundColor(Color.white)
                            .frame(width: 100, height: 50, alignment: .center)
                            .background(Color(.systemGreen))
                            .cornerRadius(30)
                    }
                    .padding(.top, 30.0)
                    }
                }
                SideMenu(width: UIScreen.main.bounds.width/2.4, menuOpened: menuOpened, toggleMenu: toggleMenu)
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color.green.opacity(0.15))
    }
    }
    }
    func toggleMenu() {
        menuOpened.toggle()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
            .preferredColorScheme(.light)
    }
}
