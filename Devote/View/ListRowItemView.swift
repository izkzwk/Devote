//
//  ListRowItemView.swift
//  Devote
//
//  Created by Dzmitry Bladyka on 4.04.23.
//

import SwiftUI

struct ListRowItemView: View {
  @Environment(\.managedObjectContext) var viewContext
  @ObservedObject var item: Item
  
  var body: some View {
    Toggle(isOn: $item.completion) {
      Text(item.task ?? "")
        .font(.system(.title2, design: .rounded))
        .fontWeight(.heavy)
        .foregroundColor(item.completion ? Color.pink : Color.primary)
        .padding(.vertical, 8)
        .animation(.default, value: 3) // my value 
    } //: TOGGLE
    .toggleStyle(CheckboxStyle())
    .onReceive(item.objectWillChange, perform: { _ in
      if self.viewContext.hasChanges {
        try? self.viewContext.save()
      }
    })
  }
}
