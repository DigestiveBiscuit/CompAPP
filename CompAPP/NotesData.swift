//
//  NotesData.swift
//  CompAPP
//
//  Created by Thomas Carter on 10/11/2020.
//

import Foundation
import SwiftUI
import Combine

struct Task : Identifiable {
    var id = String()
    var toDoItem  = String()
    
    
//Add more complicated stuff later.
}

class TaskStore : ObservableObject {
    @Published var tasks = [Task]()
}
