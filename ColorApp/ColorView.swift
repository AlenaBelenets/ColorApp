//
//  ColorView.swift
//  ColorApp
//
//  Created by Alena Belenets on 15.09.2022.
//

import SwiftUI

struct ColorView: View {

    let red: Double
    let green: Double
    let blue: Double

    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .cornerRadius(25)
            .frame(height: 250)
            .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 4))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 100, green: 100, blue: 100)
    }
}
