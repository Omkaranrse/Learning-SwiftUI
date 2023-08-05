//
//  IfLetGuard.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 03/08/23.
//

import SwiftUI

struct IfLetGuard: View {
    
    @State var displayText : String? = nil
    @State var isLoading : Bool = false
    @State var currentUser : String? = "user098"
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Flutter Developer")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
//                DO NOT USER ! EVER!!!!!!!
//                I DO NOT FORCE UNWRAP VALUES
//                Text (displayText!)
//                    .font (.title)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .onAppear(perform: {
                loadData2()
            })
            .navigationTitle(Text("Safe Coding"))
        }
    }
    
    func loadData() {
        
        if let userID = currentUser{
            isLoading = true
            DispatchQueue.main.asyncAfter(
                deadline: .now() + 5,
                execute: {
                displayText = "Fuck \(userID)"
                    isLoading = false
                    
                })
        }
        else{
            displayText = "Error"
        }
    }
    
    func loadData2(){
        
        guard let userID = currentUser else{
            displayText = "Error Occured"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(
            deadline: .now() + 5,
            execute: {
            displayText = "Fuck \(userID)"
                isLoading = false
                
            })
    }
    
}

struct IfLetGuard_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuard()
    }
}

