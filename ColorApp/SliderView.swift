//
//  SliderView.swift
//  ColorApp
//
//  Created by Alena Belenets on 13.09.2022.
//

import SwiftUI

struct SliderView: View {

    @Binding var value: Double
    @State private var text = ""

    let color: Color

    var body: some View {
        HStack {
            TextView(value: value)

            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: value) { newValue in
                    text = newValue.formatted()
                }
            TextFieldView(text: $text, value: $value)

        }
        .onAppear {
            text = value.formatted()
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            SliderView(value: .constant(100), color: .orange)
        }
    }
}
