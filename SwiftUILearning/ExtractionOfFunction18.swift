//
//  ExtractionOfFuncyion.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 03/08/23.
//

import SwiftUI

struct ExtractionOfFuncyion: View {
    
    @State var backGroundColor : Color = Color.blue
    
    var body: some View {
        ZStack{
            //BACKGROUND
            backGroundColor
                .ignoresSafeArea()
            
            //CONTENT
            contentView
           
        }
    }
    
    var contentView : some View{
        VStack{
            Text("OMKAR")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Button {
                backgroundColor()
            } label: {
                Text("CLICK")
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding()
                    .padding(.horizontal,20)
                    .background(Color.black)
                    .cornerRadius(10)
                
            }

        }
    }
    
    func backgroundColor(){
        self.backGroundColor = Color.yellow
    }
}

struct ExtractionOfFuncyion_Previews: PreviewProvider {
    static var previews: some View {
        ExtractionOfFuncyion()
    }
}
