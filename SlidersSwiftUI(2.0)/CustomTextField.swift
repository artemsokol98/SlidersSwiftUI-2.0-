//
//  CustomTextField.swift
//  SlidersSwiftUI(2.0)
//
//  Created by Артем Соколовский on 07.06.2021.
//

import SwiftUI

struct CustomTextField: View {
    @State private var alert = false
    @State private var isEditing = false
    @Binding var value: Double
    
    var body: some View {
        
        TextField("",
                  value: $value,
                  formatter: NumberFormatter())
        { (isEditing) in
            self.isEditing = isEditing
        } onCommit: {
            validate(name: value)
        }
        .alert(isPresented: $alert, content: {
            Alert(title: Text("Error"), message: Text("Input data should be: 0-255"), dismissButton: .default(Text("Done")))
        })
        //.keyboardType(.numberPad)
        .textFieldStyle(RoundedBorderTextFieldStyle())
    }
    
    private func validate(name: Double) {
        if !(name >= 0 && name <= 255) {
            self.value = 128
            alert = true
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(value: .constant(0))
    }
}
