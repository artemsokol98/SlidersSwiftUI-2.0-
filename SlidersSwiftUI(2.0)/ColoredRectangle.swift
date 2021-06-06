//
//  ColoredRectangle.swift
//  SlidersSwiftUI(2.0)
//
//  Created by Артем Соколовский on 06.06.2021.
//

import SwiftUI

struct ColoredRectangle: View {
    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
            .frame(width: 300, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color(red: red / 255, green: green / 255, blue: blue / 255))
    }
}

struct ColoredRectangle_Previews: PreviewProvider {
    static var previews: some View {
        ColoredRectangle(red: .constant(0), green: .constant(0), blue: .constant(0))
    }
}
