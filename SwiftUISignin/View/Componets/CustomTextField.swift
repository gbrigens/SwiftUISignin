//
//  CustomPlaceholder.swift
//  SwiftUISignin
//
//  Created by Gerald Brigen on 12/31/19.
//  Copyright © 2019 Gerald Brigen. All rights reserved.
//

import SwiftUI

struct CustomTextField: View {
    var placeholder: Text
    @Binding var username: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    
    var body: some View {
        ZStack(alignment: .leading) {
            if username.isEmpty { placeholder }
            TextField("", text: $username, onEditingChanged: editingChanged, onCommit: commit).foregroundColor(Color.white)
        }
    }
}

