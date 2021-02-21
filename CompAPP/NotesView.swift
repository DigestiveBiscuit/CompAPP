//
//  NotesView.swift
//  CompAPP
//
//  Created by Thomas Carter on 10/11/2020.
//

import SwiftUI
import Combine

struct NotesView: View {
    @ObservedObject var taskStore = TaskStore()
    @State var newToDo : String = ""
    
    var searchBar : some View {
        HStack{
            TextField("New Task", text:
                        self.$newToDo)
            Button(action: self.addNewToDo, label: {
                Text("Add New")
            })
        }
    }
    
    func addNewToDo() {
        taskStore.tasks.append(Task(id: String(taskStore.tasks.count + 1), toDoItem: newToDo))
        self.newToDo = ""
        // Add auto id gen later.
        
    }
    
    var body: some View {
        NavigationView {
            VStack{
                searchBar
                    .padding(10)
                List{
                    ForEach(self.taskStore.tasks) {
                        task in
                        Text(task.toDoItem)
                    }.onMove(perform: self.move)
                    .onDelete(perform: self.delete)
                }.navigationTitle("Todo")
                .navigationBarItems(trailing: EditButton())
            }
        }
    }
    func move(from source :IndexSet, to destination: Int){
        taskStore.tasks.move(fromOffsets: source, toOffset: destination)
    }
    
    func delete(at offsets : IndexSet)
    {
        taskStore.tasks.remove(atOffsets: offsets)
    }
}


struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}
