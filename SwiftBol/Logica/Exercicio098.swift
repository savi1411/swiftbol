//
//  Exercicio098.swift
//  SwiftBol
//
//  Created by Carlos Alberto Savi on 15/02/21.
//

import SwiftUI

struct Exercicio098: View {
    @State private var txtV1 = String()
    @State private var txtV2 = String()
    @State private var txtMatches = String()
    @State private var exibirAlerta = false
    
    func calcSoma() {
        var matches = 0
        let arrayV1 = txtV1.components(separatedBy: ",")
        let arrayV2 = txtV2.components(separatedBy: ",")
        if arrayV1.count != 15 || arrayV2.count != 15 {
            self.exibirAlerta = true
            return
        }
        for index in 0 ..< arrayV1.count {
            let numeroV1 = Int(arrayV1[index]) ?? 0
            let numeroV2 = Int(arrayV2[index]) ?? 0
            if numeroV1 == numeroV2 {
                matches += 1
            }
        }
        self.txtMatches = String(matches)
    }
    
    var body: some View {
        Form {
            Section(header: Text("Digite 2 sequências de 15 números,separados por vírgulas")) {
                TextField("Sequência de Números 1", text: $txtV1)
                TextField("Sequência de Números 2", text: $txtV2)
            }
            Button(action: self.calcSoma) {
                Text("Procurar números e posições coincidentes")
            }
            Section(header: Text("Quantidade de matches")) {
                Text("\(txtMatches)")
            }
        }
        .alert(isPresented: $exibirAlerta, content: {
            Alert(title: Text("Atenção"), message: Text("Favor digitar sequências exatas de 15 números"), dismissButton: .default(Text("Entendi!")))

        })

    }
}

struct Exercicio098_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio098()
    }
}
