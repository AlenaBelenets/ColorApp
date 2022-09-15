//
//  TextView.swift
//  ColorApp
//
//  Created by Alena Belenets on 15.09.2022.
//

import SwiftUI

struct TextView: View {
    let value: Double

    var body: some View {
        Text(value.formatted())
            .frame(width: 35, alignment: .leading)
            .foregroundColor(.white)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            TextView(value: 128)
        }
    }
}
