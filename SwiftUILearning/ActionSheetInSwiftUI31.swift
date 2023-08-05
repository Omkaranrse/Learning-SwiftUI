//
//  ActionSheetInSwiftUI.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 01/08/23.
//

import SwiftUI

struct ActionSheetInSwiftUI: View {
    
    @State var backgroundColor : Color = Color.yellow
    @State var showActionSheet : Bool = false
    
    var body: some View {
        ZStack{
            Button {
                showActionSheet.toggle()
            } label: {
                Text("BUTTON")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.black)
                    .cornerRadius(20)
            }

            .actionSheet(isPresented: $showActionSheet, content: actionSheet)
        }
    }
    
    func actionSheet() -> ActionSheet{
//        return ActionSheet(title: Text("Flutter Developer"))
        
        let button1 : ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
        let button2 : ActionSheet.Button = .cancel()
        let button3 : ActionSheet.Button = .default(Text("default"))
        
        return ActionSheet(
            title: Text("Flutter Developer"),
            message: Text("This is the meassage"),
            buttons: [button1,button2,button3]
        )
    }
}

struct ActionSheetInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetInSwiftUI()
    }
}

