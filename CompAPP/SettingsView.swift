//
//  SettingsView.swift
//  CompAPP
//
//  Created by Thomas Carter on 16/11/2020.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        Button(action: {}){
            NavigationLink("Sign Out", destination: ContentView().navigationBarHidden(true))
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 200, height: 50)
            .background(Color.green)
            .cornerRadius(15.0)
        }.padding(20)
        .navigationBarTitle("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
