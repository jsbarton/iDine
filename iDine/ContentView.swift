//
//  ContentView.swift
//  iDine
//
//  Created by Jordan Barton on 3/11/25.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View { // some is a opaque return type
        NavigationStack {
            List {
                ForEach(menu) { section in
                    // block is executed for each of our menu sections
                    Section(section.name) {
                        ForEach(section.items) { item in
                            Text(item.name)
                        }
                    }
                }
            }
            .navigationTitle("Menu") // Title is attached to the list
            .listStyle(.grouped)
        }
    }
}

#Preview {
    ContentView()
}
