//
//  Exercicio030.swift
//  SwiftBol
//
//  Created by Carlos Alberto Savi on 16/02/21.
//

import SwiftUI

struct Exercicio030: View {
    @State private var txtCelsius = "0.0"
    
    var convert: Double {
        let tempC = Double(txtCelsius) ?? 0.0
        let tempF = (tempC * (9 / 5)) + 32
        return tempF
    }
    
    var body: some View {
        Form {
            Section(header: Text("Temperatura em Celsius")) {
                TextField("graus", text: $txtCelsius)
            }
            Section(header: Text("Conversão em Fahrenheit")) {
                Text("\(convert, specifier: "%.2f")")
            }
        }
    }}

struct Exercicio030_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio030()
    }
}
