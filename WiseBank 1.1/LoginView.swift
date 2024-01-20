//
//  LoginView.swift
//  WiseBank
//
//  Created by Davi Vedrani on 23/10/23.
//

import SwiftUI

struct YourAppNameApp: App{
    @AppStorage("username") var username: String = ""
    
    var body: some Scene{
        WindowGroup {
            LoginView()
        }
    }
}

struct LoginView: View {
    @AppStorage ("username") var username: String = ""
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack{
                    Image("icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 110, height: 110)
                        .cornerRadius(20)
                    
                    HStack{
                        
                        Image(systemName: "person.badge.key")
                            .foregroundColor(.black)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        
                        TextField("Username", text: $username)
                            .frame(width: 300)
                            .padding(5)
                            .font(.title3)
                            .foregroundColor(.black)
                    }.underlineTextField()
                    
                    
                    
                    
                    NavigationLink(
                        destination: HomeView(),
                        label: {
                            Text("Entrar")
                                .foregroundStyle(.black)
                                .fontWeight(.bold)
                                .frame(width: 350, height: 55)
                                .background(Color("green2"))
                                .clipShape(RoundedRectangle(cornerRadius: 13))
                            
                        }
                    )

                }
            }
        }
    }
}




struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
        
        
    }
}
extension Color {
    static let darkPink = Color("green2")
}
extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
            .foregroundColor(Color("green2"))
            .padding(10)
    }
}
