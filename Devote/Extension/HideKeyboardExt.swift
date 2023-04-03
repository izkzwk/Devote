//
//  HideKeyboardExt.swift
//  Devote
//
//  Created by Dzmitry Bladyka on 4.04.23.
//

import SwiftUI

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
