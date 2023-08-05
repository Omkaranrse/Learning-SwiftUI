//
//  AppStorageINSWIftUI.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 01/08/23.
//

import SwiftUI

struct AppStorageINSWIftUI: View {
    
//    @State var currentUserName : String?
    @AppStorage("name") var currentUserName : String?
    
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 1))]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing).ignoresSafeArea()
            
            VStack{
                Text(currentUserName ?? "Omkar")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                if let name = currentUserName{
                    Text(name)
                }
                
                Button {
                    let name : String = "Full Stack Flutter Developer"
                    currentUserName = name
//                    UserDefaults.standard.set(name, forKey: "name")
                } label: {
                    Text("SAVE")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.black)
                        .cornerRadius(50)
                }

            }
//            .onAppear {
//                currentUserName = UserDefaults.standard.string(forKey: "name")
//            }
        }
    }
}

struct AppStorageINSWIftUI_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageINSWIftUI()
    }
}

