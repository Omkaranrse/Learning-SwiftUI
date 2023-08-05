//
//  Buttonss.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 01/08/23.
//

import SwiftUI

struct Buttonss: View {
    
    @State var title : String = "This is my title"
    
    var body: some View {
        VStack{
            Text(title)
                .font(.largeTitle)
            
            Button("Click".lowercased()) {
                self.title = "button pressed"
            }
            .accentColor(.black)
            .padding(10)
            .background(Color.yellow)
            .padding()
            Button {
                self.title = "button 2 pressed"
            } label: {
                Text("Click".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .padding()
                    .padding(.horizontal,20)
                    .background(
                        Color.yellow
                            .cornerRadius(10)
                            .shadow(radius: 10)
                        )
            }
            .padding()
            
            Button {
                self.title = "button 3 pressed"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75,height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.pink)
                    }
                
            }
            .padding()
            
            Button {
                self.title = "button 4 pressed"
            } label: {
                Text("Finish" .uppercased())
                    .font(.headline)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray,lineWidth: 2)
                        )
                }
            .padding()
        }
    }
    
}

struct Buttonss_Previews: PreviewProvider {
    static var previews: some View {
        Buttonss()
    }
}


