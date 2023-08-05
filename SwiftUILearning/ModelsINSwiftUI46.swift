//
//  ModelsINSwiftUI.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 03/08/23.
//

import SwiftUI

struct UserModel : Identifiable{
    let id : String = UUID().uuidString
    let displayName : String
    let userName : String
    let followers : String
    let verify : Bool
}

struct ModelsINSwiftUI: View {
    
    @State var users : [UserModel] = [
        UserModel(displayName: "Omkar", userName: "omkaranarse", followers: "100", verify: true),
        UserModel(displayName: "Omkar", userName: "omkaranarse", followers: "1000", verify: false),
        UserModel(displayName: "Omkar", userName: "omkaranarse", followers: "100", verify: true),
        UserModel(displayName: "Omkar", userName: "omkaranarse", followers: "100", verify: false),
        UserModel(displayName: "Omkar", userName: "omkaranarse", followers: "100", verify: true),
        UserModel(displayName: "Omkar", userName: "omkaranarse", followers: "100", verify: false),
        UserModel(displayName: "Omkar", userName: "omkaranarse", followers: "100", verify: true)
    ]
    
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            NavigationView{
                VStack{
                    List{
                        ForEach(users) { user in
                            HStack(spacing: 15){
                                Circle()
                                    .frame(width: 45, height: 45)
                                VStack(alignment: .leading,spacing: 5){
                                    Text(user.displayName)
                                        .font(.headline)
                                        
                                    Text("@\(user.userName)")
                                        .font(.caption)
                                        .foregroundColor(Color.gray)
                                }
                                Spacer()
                                if user.verify {
                                    Image(systemName: "checkmark.seal.fill")
                                        .foregroundColor(Color.blue)
                                }
                                VStack {
                                    Text(user.followers)
                                    Text("Followers")
                                        .font(.caption)
                                        .foregroundColor(Color.gray)
                                }
                            }
                        }
                    }
                }
                .navigationTitle(Text("Users"))
            }
        }
    }
}

struct ModelsINSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        ModelsINSwiftUI()
    }
}
