//
//  ContentView.swift
//  CompAPP
//
//  Created by Thomas Carter on 24/10/2020.
//

import SwiftUI
struct ContentView: View {
    //ensures empty
    @State var page = "page1"
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView{
    //vertical stack for layout
        VStack(){
            Text("Hi There!") //TODO: title change name
                .font(.largeTitle).foregroundColor(Color.black)
                .padding([.top, .bottom], 40)
            //TODO: Create a logo/find a logo
            Image("logoimg")
                .resizable()
                .frame(width: 250, height: 250)
                .shadow(radius: 5)
                .padding(.bottom, 50)
            VStack(alignment: .leading, spacing: 15){

            //TODO:{
                
                
                //Database connection for login details.
                
                
            //}
            TextField("Email",text: self.$email)
                .foregroundColor(Color.black)
                .padding()
                .background(Color(red: 0.9, green: 0.9, blue: 0.9, opacity: 1.0))
                .cornerRadius(20.0)
            SecureField("Password", text: self.$password)
                .foregroundColor(Color.black)
                .padding()
                .background(Color(red: 0.9, green: 0.9, blue: 0.9, opacity: 1.0))
                .cornerRadius(20.0)
            }
            .padding([.leading, .trailing], 27.5)
            
            //TODO: Button takes to next page, doesn't check login credentials currently.
                Button(action: {}){
                    NavigationLink("Sign In", destination: AfterLogged())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color.green)
                    .cornerRadius(15.0)
                }.padding(20)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
