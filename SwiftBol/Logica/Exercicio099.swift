//
//  Exercicio99.swift
//  SwiftBol
//
//  Created by Carlos Alberto Savi on 12/02/21.
//

import SwiftUI

struct Exercicio99: View {
    @State private var numeros = [1, 5, 7, 7, 12, 15, 17, 22, 30, 50]
    @State private var numAProcurar = "0"
    @State private var numVezes = "0"
    
    func procuraNumero() {
        var contador = 0
        for numero in numeros {
            if Int(numAProcurar) == numero {
                contador += 1
            }
        }
        self.numVezes = String(contador)
    }
    
    var body: some View {
        Form {
            Section(header: Text("Relação de Números")) {
                List {
                    ForEach(numeros, id: \.self) { numero in
                        Text("\(numero)")
                    }
                }
            }
            Section(header: Text("Exercício 99")) {
                TextField("Digite um número", text: $numAProcurar)
            }
            Text("O número aparece: \(numVezes) vezes na lista")
            Button(action: self.procuraNumero) {
                Text("Calcular")
            }
        }
    }
}

struct Exercicio99_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio99()
    }
}
