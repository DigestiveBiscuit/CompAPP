//
//  SinfulView.swift
//  CompAPP
//
//  Created by Thomas Carter on 10/12/2020.
//

import SwiftUI

struct SinfulView: View {
    var body: some View {
        NavigationView {
        CalendarView()
            .navigationBarTitle("Calendar")
        }
    }


struct SinfulView_Previews: PreviewProvider {
    static var previews: some View {
        SinfulView()
    }
}
}
