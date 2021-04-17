//
//  Exercicio076.swift
//  SwiftBol
//
//  Created by Carlos Alberto Savi on 15/02/21.
//

import SwiftUI

struct Exercicio076: View {
    @State private var txtNumeros = String()
    @State private var txtSoma = String()
    @State private var exibirAlerta = false
    
    func calcSoma() {
        var soma = 0
        let array = txtNumeros.components(separatedBy: ",")
        if array.count != 10 {
            self.exibirAlerta = true
            return
        }
        for char in array {
            let numero = Int(char) ?? 0
            soma += numero
        }
        self.txtSoma = String(soma)
    }
    
    var body: some View {
        Form {
            Section(header: Text("Digite 10 números, separados por vírgulas")) {
                TextField("Sequência de Números", text: $txtNumeros)
            }
            Button(action: self.calcSoma) {
                Text("Calcular a soma dos números")
            }
            Section(header: Text("Resultado da soma")) {
                Text("\(txtSoma)")
            }
        }
        .alert(isPresented: $exibirAlerta, content: {
            Alert(title: Text("Atenção"), message: Text("Favor digitar uma sequência exata de 10 números"), dismissButton: .default(Text("Entendi!")))

        })
    }
}

struct Exercicio076_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio076()
    }
}
