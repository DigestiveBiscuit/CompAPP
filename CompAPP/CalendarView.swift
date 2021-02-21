//
//  CalendarView.swift
//  CompAPP
//
//  Created by Thomas Carter on 10/11/2020.
//
import FSCalendar
import SwiftUI
import UIKit

struct CalendarView: UIViewRepresentable {

func makeUIView(context: Context) -> UIView {
    
    return FSCalendar(frame: CGRect(x: 0.0, y: 40.0, width: .infinity, height: 300.0))
}

func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
