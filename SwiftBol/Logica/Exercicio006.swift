//
//  Exercicio006.swift
//  SwiftBol
//
//  Created by Carlos Alberto Savi on 11/02/21.
//

import SwiftUI

struct Exercicio006: View {
    @State private var nome = String()
    @State private var celular = String()
    @State private var cidade = String()
    
    var body: some View {
        Form {
            Section(header: Text("Informações do Usuário")) {
                TextField("Nome", text: $nome)
                TextField("Celular", text: $celular)
                TextField("Cidade", text: $cidade)
            }
            Section(header: Text("Dados informados")) {
                Text("\(nome)")
                Text("\(celular)")
                Text("\(cidade)")
            }
        }
    }
}

struct Exercicio006_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio006()
    }
}
