//
//  ReminderView.swift
//  CompAPP
//
//  Created by Thomas Carter on 10/12/2020.
//

import SwiftUI
import UserNotifications

struct ReminderView: View {
    @State var title: String = ""
    @State var subtitle: String = ""
    @State var selectedDate = Date()
    @State var buttonHide: CGFloat = 15
    @State var showAlert = false
    
    var body: some View {
        NavigationView {
    VStack() {
    
            Button("Request Permission") {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                    if success {
                        print("All set!")
                        buttonHide = 0
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
                }
            }.padding()
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: buttonHide)
            .background(Color.red)
            .cornerRadius(15.0)
        
        
        TextField("Title",text: self.$title)
            .foregroundColor(Color.black)
            .padding(20)
            .background(Color(red: 0.9, green: 0.9, blue: 0.9, opacity: 1.0))
            .cornerRadius(20.0)
            
        TextField("Text",text: self.$subtitle)
            .foregroundColor(Color.black)
            .padding(20)
            .background(Color(red: 0.9, green: 0.9, blue: 0.9, opacity: 1.0))
            .cornerRadius(20.0)

        
        DatePicker(selection: $selectedDate, in: Date()..., displayedComponents: [.hourAndMinute, .date]) {
                        Text("Time:")
        }.padding()
        
            Button("Set Reminder") {
                let content = UNMutableNotificationContent()
                content.title = title
                content.subtitle = subtitle
                content.sound = UNNotificationSound.default
                showAlert = true

                // show this notification
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)


                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                // add notification request
                UNUserNotificationCenter.current().add(request)
                

            }.font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 200, height: 50)
            .background(Color.green)
            .cornerRadius(15.0)
            .alert(isPresented: $showAlert)
            {
                Alert(title: Text("Reminder Set."), dismissButton: .default(Text("Got it!")))
            }
                }.navigationBarTitle("Reminder")
        }
    }



struct ReminderView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderView()
    }
}
}
