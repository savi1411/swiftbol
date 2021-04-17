//
//  Exercicio045.swift
//  SwiftBol
//
//  Created by Carlos Alberto Savi on 15/02/21.
//

import SwiftUI

struct Exercicio045: View {
    @State private var salarioBruto = "0.0"
    @State private var totalVendas = "0.0"
    
    var salarioTotal: Double {
        let salBruto = Double(salarioBruto) ?? 0
        let vendas = Double(totalVendas) ?? 0
        var salLiquido = 0.0
        if vendas > 0 && vendas <= 1_500 {
            salLiquido = salBruto + (vendas * 0.03)
        } else if vendas > 1_500 {
            salLiquido += salBruto + ((1_500 * 0.03) + ((vendas - 1_500) * 0.05))
        } else {
            salLiquido = 0
        }
        return salLiquido
    }
    
    var body: some View {
        Form {
            Section(header: Text("Cálculo de Salário")) {
                TextField("Salário Bruto", text: $salarioBruto)
                TextField("Total de Vendas", text: $totalVendas)
            }
            Section(header: Text("Salário Líquido")) {
                Text("\(salarioTotal)")
            }
        }
    }
}

struct Exercicio045_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio045()
    }
}
