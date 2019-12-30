//
//  DesignOne.swift
//  SwiftUISignin
//
//  Created by Gerald Brigen on 6/22/19.
//  Copyright © 2019 Gerald Brigen. All rights reserved.
//

import SwiftUI

//MARK: Design One
struct DesignOne: View {
    @EnvironmentObject var user: User
    var body: some View {
        VStack{
            VStack{
                Text("Hello There!")
                    .font(Font.custom("RobotoSlab-Bold", size: 32))
                    .fontWeight(.bold)
                    .foregroundColor(.pink)
//                Text("Please sign in to continue")
//                    .font(Font.custom("RobotoSlab-light", size: 18))
//                    .fontWeight(.light)
//                    .foregroundColor(.secondary)
            }.padding(.top,120)
            Spacer()
            
            VStack{
                TextField("Username",text: $user.userName).font(.custom("RobotoSlab-light", size: 18))
                    .foregroundColor(Color.secondary)
                Rectangle().frame(height: 1)
                    .foregroundColor(Color.gray)
                    .padding(.bottom,20)
                SecureField("password", text: $user.password)
                    .font(.custom("RobotoSlab-light", size: 18))
                    .foregroundColor(Color.secondary)
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color.secondary)
                HStack {
                    Spacer()
                    Button(action: {
                        print("Forgot pressed")
                    }) {
                        Text("Forgot Pass?").font(.custom("RobotoSlab-light", size: 14))
                            .fontWeight(.light)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .padding(.horizontal, 32.0)
            
            Button(action: {
                print("You've typed \(self.user.userName) as your username and \(self.user.password) as your password")
            }) {
                Image("designOneBtn")
            }.padding(.top,40)
            Spacer()
            Button(action: {
                print("signup pressed")
            }) {
                Text("Sign up, if you're new!").font(.custom("RobotoSlab-light", size: 18))
                    .fontWeight(.light)
                    .foregroundColor(.black)
            }.padding(.bottom, 50)
        }
    }
}

#if DEBUG
struct DesignOne_Previews : PreviewProvider {
    static var previews: some View {
        DesignOne().environmentObject(userData)
    }
}
#endif
