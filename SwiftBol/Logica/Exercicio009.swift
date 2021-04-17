//
//  Exercicio009.swift
//  SwiftBol
//
//  Created by Carlos Alberto Savi on 11/02/21.
//

import SwiftUI

struct Exercicio009: View {
    @State private var valor1 = "0"
    @State private var valor2 = "0"
//    @State private var soma = "0"
    
    var sum: Int {
        let oper1 = Int(valor1) ?? 0
        let oper2 = Int(valor2) ?? 0
        let sum = oper1 + oper2
        return sum
    }
    
    var body: some View {
        Form {
            Section(header: Text("Dados para soma")) {
                TextField("Valor1", text: $valor1)
                    .padding()
                    .keyboardType(.decimalPad)
                TextField("Celular", text: $valor2)
                    .padding()
            }
            Section(header: Text("Resultado do cálculo")) {
                Text("\(sum)")
            }
        }
    }
}

struct Exercicio009_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio009()
    }
}
