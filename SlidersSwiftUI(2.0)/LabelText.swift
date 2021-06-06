//
//  LabelText.swift
//  SlidersSwiftUI(2.0)
//
//  Created by Артем Соколовский on 07.06.2021.
//

import SwiftUI

struct LabelText: View {
    @Binding var value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 40, height: 30, alignment: .leading)
    }
}

struct LabelText_Previews: PreviewProvider {
    static var previews: some View {
        LabelText(value: .constant(0))
    }
}
