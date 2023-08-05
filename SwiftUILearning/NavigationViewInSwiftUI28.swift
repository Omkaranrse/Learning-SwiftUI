//
//  NavigationViewInSwiftUI.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 03/08/23.
//

import SwiftUI

struct NavigationViewInSwiftUI: View {
    var body: some View {
        NavigationView{
                        
            ScrollView{
                
                NavigationLink("Click", destination: SecondScreen())

//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
            }
            .navigationTitle("Devlopment")
            //            .navigationBarTitleDisplayMode(.automatic)
            //            .navigationBarHidden(true)
            .navigationBarItems(
                
                leading: HStack{
                    Image(systemName: "person.fill")
                    Image(systemName: "person.fill")
                    Image(systemName: "person.fill")
                    Image(systemName: "person.fill")
                    Image(systemName: "person.fill")
                    Image(systemName: "person.fill")
                    Image(systemName: "person.fill")
                    Image(systemName: "person.fill")
                    Image(systemName: "person.fill")
                    Image(systemName: "person.fill")
                },
                trailing: NavigationLink(destination: {
                    ThirdScreen()
                }, label: {
                    Image(systemName: "gear")
                }))
            
        }
    }
}

struct SecondScreen : View {
    @Environment (\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea()
            VStack{
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Back")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.black)
                }
                
                .navigationTitle("Second Screen")
                .navigationBarHidden(true)
            NavigationLink("click", destination: Text("Third Screen"))

            }
                 
        }
    }
}

struct ThirdScreen : View {
    @Environment (\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color.purple
                .ignoresSafeArea()
            VStack{
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Back")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.black)
                }
                
                .navigationTitle("Third Screen")
                .navigationBarHidden(true)
            NavigationLink("click", destination: Text("Fourth Screen"))

            }
                 
        }
    }
}
struct NavigationViewInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewInSwiftUI()
    }
}

