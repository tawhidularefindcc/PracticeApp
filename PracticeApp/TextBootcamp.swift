//
//  TextBootcamp.swift
//  PracticeApp
//
//  Created by Md Najmuzzaman on 8/11/22.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!".capitalized)
            //.font(.body)
            //.fontWeight(.semibold)
            //.bold()
            //.underline()
            //.underline(true, color: Color.red)
            //.italic()
            //.strikethrough(true, color: Color.green)
//            .font(.system(size: 24, weight: .semibold, design: .serif))
            //.baselineOffset(50)
            //.kerning(10)
            .foregroundColor(.red)
            .multilineTextAlignment(.leading)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
