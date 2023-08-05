//
//  EnvironmentObjectINSwiftUI.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 03/08/23.
//

import SwiftUI

class EnvironmentViewModel : ObservableObject{
    
    @Published var dataArray : [String] = []
    
    init(){
        getData()
    }
    
    func getData(){
        self.dataArray.append(contentsOf: ["iphone","ipad","imac","ipod","iwatch"])
    }
}

struct EnvironmentObjectINSwiftUI: View {
    
    @StateObject var viewModel : EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.dataArray, id: \.self) { data in
                    NavigationLink {
                        DetailedView(selected: data)
                    } label: {
                        Text(data)
                    }
                }
            }
            .navigationTitle(Text("Apple Products "))
        }
        .environmentObject(viewModel) //now we can access it globally
    }
}

struct DetailedView : View{
    
    let selected : String
    var body: some View{
        ZStack{
            Color.orange.ignoresSafeArea()
            
            NavigationLink {
                FinalView()
            } label: {
                Text(selected)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.black)
                    .cornerRadius(40)
            }
        }
    }
}

struct FinalView : View {
    
    @EnvironmentObject var viewModel : EnvironmentViewModel
    
    var body: some View {
        ZStack{
            
            //background
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 1))]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing).ignoresSafeArea()
            
            //foreground
            ScrollView{
                VStack(spacing: 20){
                    ForEach(viewModel.dataArray, id: \.self) { data in
                        Text(data)
                    }
                }
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            }
        }
    }
}

struct EnvironmentObjectINSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectINSwiftUI()
    }
}


