//
//  BadgesINSWIFTUI.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 01/08/23.
//

import SwiftUI


//TabView
//ListView

struct BadgesINSWIFTUI: View {
    
    @State var fruits : [String] = ["apple","mango","watermelon"]
    
    var body: some View {
        
        List{
            
            Text("Omkar")
                .badge("omkar")
            Text("Omkar")
                .badge("Flutter Developer")
            Text("Omkar")
                .badge(5)
            
            
            
            ForEach(fruits, id: \.self) {
                Text($0.uppercased())
                    .badge(7)
                    }
              }
        
        
        
        
        
        
        
        
        
        
        TabView{
            Color.yellow
                .tabItem {
                    Image(systemName: "heart")
                }
                .badge(5)

            Color.purple
                .tabItem {
                    Image(systemName: "heart")
                }
                .badge(5)

            Color.pink
                .tabItem {
                    Image(systemName: "heart")
                }
                .badge("omkar")
        }
    }
}

struct BadgesINSWIFTUI_Previews: PreviewProvider {
    static var previews: some View {
        BadgesINSWIFTUI()
    }
}

