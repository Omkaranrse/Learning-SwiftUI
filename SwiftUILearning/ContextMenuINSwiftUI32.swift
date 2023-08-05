//
//  ContextMenuINSwiftUI.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 03/08/23.
//

import SwiftUI

struct ContextMenuINSwiftUI: View {
    
    @State var backgroundColor : Color = Color.black
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Flutter Developer")
                .font(.title)
            Text("As Fast As Possible")
                .font(.headline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor)
        .cornerRadius(20)
        .contextMenu {
            Button {
                backgroundColor = .blue
            } label: {
                Label("Share", systemImage: "figure.walk")
            }
            
            Button {
                backgroundColor = .red
            } label: {
                Text("Like")
            }

            Button {
                backgroundColor = .orange
            } label: {
                HStack{
                    Text("Subscribe")
                    Image(systemName: "hand.thumbsup.circle")
                }
            }


        }
    }
}

struct ContextMenuINSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuINSwiftUI()
    }
}

