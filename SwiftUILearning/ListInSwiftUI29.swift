//
//  ListInSwiftUI.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 03/08/23.
//

import SwiftUI

struct ListInSwiftUI: View {
    
    @State var fruits : [String] = ["apple","mango","grapes","watermelon","banana"]
    
    @State var veggies : [String] = ["patatos","tamatos","cabage","ladyfinger","onion"]
    
    var body: some View {
        NavigationView {
            List{
                // 1
                Section {
                    ForEach(fruits, id: \.self) {
                        fruit in Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                } header: {
                    HStack {
                        Text("FRUITS")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.red)
                        Image(systemName: "flame.fill")
                            .font(.title)
                    }
                }
                
                //2
                Section {
                    ForEach(veggies, id: \.self) {
                        veg in
                        Text(veg.capitalized)
                            .font(.title3)
                            .foregroundColor(.black)
                            .padding()
                    }
                    .onDelete(perform: delete2)
                    .onMove(perform: move2)
                }header:  {
                    HStack {
                        Text("VEGETABLES")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.red)
                        Image(systemName: "flame.fill")
                            .font(.title)
                    }
                }
            .listRowBackground(Color.yellow)
                
                
            }
            .accentColor(.yellow)
            .listStyle(SidebarListStyle())
//            .listStyle(DefaultListStyle())
            
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),trailing: add)
        }
        .accentColor(.yellow)
    }
    //1
    func delete(indexSet : IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices : IndexSet , newOffSet : Int){
        fruits.move(fromOffsets: indices, toOffset: newOffSet)
    }
    
    func append(){
        fruits.append("Coconut")
    }
    
    var add : some View{
        Button(action: {
            append()
        }, label: {
            Image(systemName: "cart.badge.plus")
        })
    }
    
    //2
    func delete2(indexSet : IndexSet){
        veggies.remove(atOffsets: indexSet)
    }
    
    func move2(indices : IndexSet , newOffSet : Int){
        veggies.move(fromOffsets: indices, toOffset: newOffSet)
    }
    
    func append2(){
        veggies.append("Coconut")
    }
    
}

struct ListInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        ListInSwiftUI()
    }
}

