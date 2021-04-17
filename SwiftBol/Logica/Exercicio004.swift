//
//  Exercicio004.swift
//  SwiftBol
//
//  Created by Carlos Alberto Savi on 11/02/21.
//

import SwiftUI

struct Exercicio004: View {
    @State private var nome: String = "Carlos"
    @State private var celular: String = "(11) 9.8965-8431"
    @State private var cidade: String = "São Paulo"
    
    var body: some View {
        List {
            Text("\(nome)")
            Text("\(celular)")
            Text("\(cidade)")
        }
    }
}

struct Exercicio004_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio004()
    }
}
