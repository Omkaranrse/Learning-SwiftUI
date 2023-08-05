//
//  Initializer.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 03/08/23.
//

import SwiftUI

struct Initializer: View {
    
    let backGroundColor : Color
    let count : Int
    let title : String
    
    init(count: Int, fruits: Fruits) {
        self.count = count
        
        if(fruits == .apple){
            self.title = "Apple"
            self.backGroundColor = Color.red
        }
        else{
            self.title = "Orange"
            self.backGroundColor = Color.orange
        }
    }
    
    enum Fruits {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 10){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150,height: 150)
        .background(backGroundColor)
        .cornerRadius(10)
    }
}

struct Initializer_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Initializer(count: 10, fruits: .apple)
            Initializer(count: 10, fruits: .orange)
            Initializer(count: 10, fruits: .apple)
            Initializer(count: 10, fruits: .orange)
        }
    }
}

