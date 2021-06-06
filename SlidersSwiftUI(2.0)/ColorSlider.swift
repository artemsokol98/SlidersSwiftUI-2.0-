//
//  ColorSlider.swift
//  SlidersSwiftUI(2.0)
//
//  Created by Артем Соколовский on 07.06.2021.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var value: Double
    let lineColor: Color
    
    var body: some View {
        Slider(value: $value, in: 0...255, step: 1)
            .frame(width: 190, height: 30, alignment: .center)
            .accentColor(lineColor)
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(value: .constant(0), lineColor: .black)
    }
}
