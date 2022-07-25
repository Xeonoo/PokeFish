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
//    let handler: () -> Void = {
//        print("tapped item")
//    }
}
 
struct MenuContent: View {
    let items : [MenuItem] = [
        MenuItem(text: "Home", imageName: "house"),
        MenuItem(text: "Settings", imageName: "house"),
        MenuItem(text: "Profile", imageName: "person.circle"),
        MenuItem(text: "Deck", imageName: "house")
    ]
    
    var body: some View {
        ZStack {
            Color(UIColor(red: 33/250.0, green: 33/250.0, blue: 33/250.0, alpha: 1))
            VStack(alignment: .leading, spacing: 0) {
                ForEach(items) { item in
                    HStack {
                        Image(systemName: item.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color.white)
                            .frame(width: 30, height: 30, alignment: .center)
                        Text(item.text)
                            .bold()
                            .font(.system(size: 22))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color.white)
                        Spacer()
                    }
//                    onTapGesture {
//
//                    }
                    .padding()
                    Divider()
                }
                Spacer()
            }
            .padding(.top, 25)
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
            .background(Color.gray.opacity(0.15))
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
        ZStack {
            VStack {
            if !menuOpened {
                Button {
                    // add
                    self.menuOpened.toggle()
                } label: {
                    Text("asd")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50, alignment: .center)
                        .background(Color(.systemGreen))
                }
                .padding(.top, 340.0)
            }
                NavigationLink(destination: ListView()
                    .navigationBarHidden(true))
                {
                    Text("Fish")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50, alignment: .center)
                        .background(Color(.systemGreen))
                }
                .padding(.top, 30.0)
            SideMenu(width: UIScreen.main.bounds.width/1.6, menuOpened: menuOpened, toggleMenu: toggleMenu)
        }
        .edgesIgnoringSafeArea(.all)
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
            .preferredColorScheme(.dark)
    }
}
