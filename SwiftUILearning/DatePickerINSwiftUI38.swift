//
//  DatePickerINSwiftUI.swift
//  SwiftUILearning
//
//  Created by Omkar Anarse on 03/08/23.
//

import SwiftUI

struct DatePickerINSwiftUI: View {
    
    @State var selectDate : Date = Date()
    
    var dateFormater : DateFormatter {
        let formatter  = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        
        
        VStack {
            
            Text("Show Selected Date")
            Text(dateFormater.string(from: selectDate))
                .font(.title)
            
            DatePicker("Select Date", selection: $selectDate)
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
                .cornerRadius(30)
            .accentColor(Color.white)
        }
//            .datePickerStyle(
//                WheelDatePickerStyle()
//                CompactDatePickerStyle()
//                GraphicalDatePickerStyle()
//            )
    }
}

struct DatePickerINSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerINSwiftUI()
    }
}

