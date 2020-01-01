//
//  CustomSecureField.swift
//  SwiftUISignin
//
//  Created by Gerald Brigen on 12/31/19.
//  Copyright © 2019 Gerald Brigen. All rights reserved.
//

import SwiftUI

struct CustomSecureField: View {
    var placeholder : Text
    @Binding var password: String
    var commit: () -> () = {}
    
    var body: some View {
        ZStack(alignment: .leading){
            if password.isEmpty {
                placeholder
            }
            SecureField("", text: $password, onCommit: commit)
                .foregroundColor(.white)
        }
    }
}
