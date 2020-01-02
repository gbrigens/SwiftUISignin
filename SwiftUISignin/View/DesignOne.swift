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
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack{
            // Logo
            Spacer()
            VStack{
                Text("Hello There!")
                .scaledFont(name: "RobotoSlab-Bold", size: 34)
                    .foregroundColor(Color(#colorLiteral(red: 0.8196078431, green: 0.1176470588, blue: 0.2823529412, alpha: 1)))
                Text("Please sign in to continue.")
                .scaledFont(name: "RobotoSlab-Light", size: 18)
                    .foregroundColor(Color.primary)
                
            }
            Spacer()
            //Form
            VStack(alignment: .center, spacing: 30) {
                VStack(alignment: .center, spacing: 10) {
                    VStack(alignment: .center, spacing: 30){
                        VStack(alignment: .center) {
                            CustomTextField(
                                placeholder: Text("Username")
                                    .foregroundColor(Color.gray),
                                username: $username)
                            Divider()
                                .background(Color.gray)
                        }
                        VStack(alignment: .leading) {
                            CustomSecureField(
                                placeholder: Text("Password").foregroundColor(Color.gray),
                                password: $password)
                            Divider()
                                .background(Color.gray)
                        }
                    }
                    HStack {
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Forgot Pass?")
                                .scaledFont(name: "RobotoSlab-Light", size: 14)
                                .foregroundColor(Color.gray)
                        }
                    }
                }
                .padding(.horizontal,38)
                
                // Button
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "arrow.right")
                        .accentColor(Color.white)
                        .font(.headline)
                        .frame(width:60,height: 60)
                        .background(Color(#colorLiteral(red: 0.8196078431, green: 0.1176470588, blue: 0.2823529412, alpha: 1)))
                        .cornerRadius(30)
                    
                }
            }
            
            //Footer
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Sign up, if you’re new!")
                    .scaledFont(name: "RobotoSlab-Light", size: 18)
                    .foregroundColor(Color.primary)
            }
            .padding(.bottom,40)
        }
    }
}

#if DEBUG
struct DesignOne_Previews : PreviewProvider {
    static var previews: some View {
        DesignOne()
    }
}
#endif
