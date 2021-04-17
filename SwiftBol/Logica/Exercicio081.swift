//
//  Exercicio081.swift
//  SwiftBol
//
//  Created by Carlos Alberto Savi on 16/02/21.
//

import SwiftUI

struct Exercicio081: View {
    @State private var txtValores = String()
    @State private var txtMenorValor = String()
    @State private var txtMaiorValor = String()
    @State private var exibirAlerta = false
    
    func procurarExtremos() {
        var menorValor = 0
        var maiorValor = 0
        let array = self.txtValores.components(separatedBy: ",")
        if array.count != 10 {
            self.exibirAlerta = true
            return
        }
        // Converte array de string para array de int
        let intArray = array.map { Int($0)! }
        menorValor = intArray.min() ?? 0
        maiorValor = intArray.max() ?? 0
        self.txtMenorValor = String(menorValor)
        self.txtMaiorValor = String(maiorValor)
    }
    
    var body: some View {
        Form {
            Section(header: Text("Digite 10 números, separados por vírgulas")) {
                TextField("Sequência de Números", text: $txtValores)
            }
            Button(action: self.procurarExtremos) {
                Text("Procurar o maior e o menor valor")
            }
            Text("Menor: \(txtMenorValor)")
            Text("Maior: \(txtMaiorValor)")
        }
        .alert(isPresented: $exibirAlerta, content: {
            Alert(title: Text("Atenção"), message: Text("Favor digitar uma sequência exata de 10 números"), dismissButton: .default(Text("Entendi!")))
            
        })
    }
}

struct Exercicio081_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio081()
    }
}
