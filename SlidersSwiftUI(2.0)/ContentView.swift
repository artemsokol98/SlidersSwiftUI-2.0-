//
//  ContentView.swift
//  SlidersSwiftUI(2.0)
//
//  Created by Артем Соколовский on 05.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)

    var body: some View {
        VStack {
            ColoredRectangle(red: $redValue, green: $greenValue , blue: $blueValue)
            
            HStack {
                LabelText(value: $redValue)
                ColorSlider(value: $redValue, lineColor: .red)
                CustomTextField(value: $redValue)
            }
            HStack {
                LabelText(value: $greenValue)
                ColorSlider(value: $greenValue, lineColor: .green)
                CustomTextField(value: $greenValue)
            }
            HStack {
                LabelText(value: $blueValue)
                ColorSlider(value: $blueValue, lineColor: .blue)
                CustomTextField(value: $blueValue)
            }
        }
        .padding(.top, -250)
        .frame(width: 300, height: 100, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


