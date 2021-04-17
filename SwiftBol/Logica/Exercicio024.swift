//
//  Exercicio024.swift
//  SwiftBol
//
//  Created by Carlos Alberto Savi on 11/02/21.
//

import SwiftUI

struct Exercicio024: View {
    @State private var nota1 = "0.0"
    @State private var nota2 = "0.0"
    @State private var nota3 = "0.0"
    @State private var media = "0.0"
    
    func calcMedia() {
        let n1 = Double(nota1) ?? 0
        let n2 = Double(nota1) ?? 0
        let n3 = Double(nota3) ?? 0
        let calc = (n1 + n2 + n3) / 3
        self.media = String(calc)
    }
    
    var body: some View {
        Form {
            Section(header: Text("Notas dos alunos")) {
                TextField("Nota1", text: $nota1)
                TextField("Nota2", text: $nota2)
                TextField("Nota3", text: $nota3)
            }
            Text("Média: \(media)")
            Button(action: self.calcMedia) {
                Text("Calcular")
            }
            
        }
    }
}

struct Exercicio024_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio024()
    }
}
