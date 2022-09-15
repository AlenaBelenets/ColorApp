//
//  ContentView.swift
//  ColorApp
//
//  Created by Alena Belenets on 13.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var red = Double.random(in: 0...255).rounded()
    @State private var blue = Double.random(in: 0...255).rounded()
    @State private var green = Double.random(in: 0...255).rounded()

    @FocusState private var isInputActive: Bool

   private var sliderColor: Color = .red


    var body: some View {
        ZStack {
            Color(red: 0.2, green: 24, blue: 32)
                .ignoresSafeArea()
            // модификатор вызывается при тапе
                .onTapGesture {
                isInputActive = false
                }

        VStack {
            ColorView(red: red, green: green, blue: blue)

            Spacer()
        }
        .padding(20)

            VStack {
                SliderView(value: $red, color: .red)
                
                SliderView(value: $blue, color: .blue)

                SliderView(value: $green, color: .green)
            }
            .frame(height: 150)
            .padding()

//            чтобы была возможность работать с клавиатурой, когда клавиатура вызывается isInputActive автоматически принимает true
            .focused($isInputActive)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        isInputActive = false
                    }
                }
            }
            Spacer()

    }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
