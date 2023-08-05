//
//  DarkMOdesINSwoftUI.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 03/08/23.
//

import SwiftUI

struct DarkMOdesINSwoftUI: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 20) {
                    
                    Text("This color is Primary")
                        .foregroundColor(.primary)
                    Text("This color is Secondary")
                        .foregroundColor(.secondary)
                    Text("This color is Black")
                        .foregroundColor(.black)
                    Text("This color is White")
                        .foregroundColor(.white)
                    Text("This color is Red")
                        .foregroundColor(.red)
                    Text("Modified colors")
                        .foregroundColor(Color("customColorSet"))
                    
                }
                .padding(.top,50)
            }
            .navigationTitle(Text("Modes in UI!!!"))
        }
    }
}

struct DarkMOdesINSwoftUI_Previews: PreviewProvider {
    static var previews: some View {
        DarkMOdesINSwoftUI()
    }
}
