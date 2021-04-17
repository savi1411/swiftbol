//
//  Exercicio023.swift
//  SwiftBol
//
//  Created by Carlos Alberto Savi on 11/02/21.
//

import SwiftUI

struct Exercicio023: View {
    @State private var tempFahrenheit = "32.0"
    
    var convert: Double {
        let tempF = Double(tempFahrenheit) ?? 0.0
        let tempC = (tempF - 32) * (5 / 9)
        return tempC
    }
    
    var body: some View {
        Form {
            Section(header: Text("Temperatura em Fahrenheit")) {
                TextField("graus", text: $tempFahrenheit)
                    .padding()
                    .keyboardType(.decimalPad)
            }
            Section(header: Text("Conversão em Celsius")) {
                Text("\(convert, specifier: "%.2f")")
            }
        }
    }
}

struct Exercicio023_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio023()
    }
}
