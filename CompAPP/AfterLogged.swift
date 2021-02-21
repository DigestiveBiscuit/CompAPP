//
//  AfterLogged.swift
//  CompAPP
//
//  Created by Thomas Carter on 26/10/2020.
//

import SwiftUI

struct AfterLogged: View {
    var body: some View {
        TabView {
            ReminderView()
                .tabItem{
                    Image(systemName: "list.dash")
                    Text("Reminder")
                }.animation(.linear)
                .navigationBarHidden(true)
            SinfulView()
                .tabItem{
                    Image(systemName: "calendar")
                    Text("Calendar")
                }.animation(.linear)
                .navigationBarHidden(true)
            NotesView()
                .tabItem{
                    Image(systemName: "square.and.pencil")
                    Text("Todo")
                }.animation(.linear)
                .navigationBarHidden(true)
            SettingsView()
                .tabItem{
                    Image(systemName: "gear")
                    Text("Settings")
                }.animation(.linear)
                .navigationBarHidden(true)
        }.animation(.default)
    }
}


struct AfterLogged_Previews: PreviewProvider {
    static var previews: some View {
        AfterLogged()
    }
}
